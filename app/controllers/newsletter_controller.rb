# frozen_string_literal: true

class NewsletterController < ApplicationController
  # Callbacks
  before_action :object, only: [:show]
  before_action :gibbon
  before_action :mc_list_id, only: [:subscribe]
  before_action :mc_mp_id_one, only: [:subscribe]

  # /newsletter
  def show
    # @subscription = Subscription.new
    # lower_case_md5_hashed_email_address = Digest::MD5.hexdigest("".downcase)
    # @member = gibbon.lists(mc_list_id).members(lower_case_md5_hashed_email_address).retrieve
  end

  # Create new subscribers via MailChimp
  # /newsletter/subscribe
  def subscribe
    begin
      gibbon.lists(mc_list_id).members.create(
        body: {
          email_address: params[:email][:address],
          status: "subscribed",
          marketing_permissions: [{
            marketing_permission_id: mc_mp_id_one,
            enabled: true
          }]
        }
      )
      flash[:success] = @settings.newsletter_success
    rescue Gibbon::MailChimpError => event
      message = "Houston, we have a problem: #{event.message} - #{event.raw_body}"
      Rails.logger.debug message
      flash[:failure] = @settings.newsletter_failure
    end
    redirect_to newsletter_path
  end

  private

  # Object
  def object
    @object = Newsletter.first!
  end

  # Gibbon
  def gibbon
    @gibbon = Gibbon::Request.new
  end

  # MC list id
  def mc_list_id
    @mc_list_id ||= ENV["MC_LIST_ID"]
  end

  # MC marketing permission id one
  def mc_mp_id_one
    @mc_mp_id_one ||= ENV["MC_MP_ID_ONE"]
  end
end

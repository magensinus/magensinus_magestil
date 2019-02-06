# frozen_string_literal: true

class QualityController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /quality
  def index
    @wallet_categories  ||= Wallet::Category.where(magestil: true).includes(:assets).where(wallet_type: "students").order(position: :asc)
  end

  private

  def object
    @object = Quality.first!
  end
end

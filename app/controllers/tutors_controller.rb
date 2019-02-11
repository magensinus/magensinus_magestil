# frozen_string_literal: true

class TutorsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /tutors
  def index
    @wallet_categories ||= Wallet::Category.where(magestil: true).includes(:assets).where(wallet_type: "students").order(position: :asc)
  end

  private

  # Object
  def object
    @object = Tutors.first!
  end
end

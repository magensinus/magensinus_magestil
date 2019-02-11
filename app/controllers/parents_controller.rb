# frozen_string_literal: true

class ParentsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /parents
  def index
    @wallet_categories ||= Wallet::Category.where(magestil: true).includes(:assets).where(wallet_type: "students").order(position: :asc)
  end

  private

  # Object
  def object
    @object = Parents.first!
  end
end

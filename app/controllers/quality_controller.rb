# frozen_string_literal: true

class QualityController < ApplicationController
  # Callbacks
  before_action :quality, only: [:index]
  before_action :wallets, only: [:index]

  # /quality
  def index
  end

  private

  # Quality
  def quality
    @quality = Quality.first!
  end

  # Wallets
  def wallets
    @wallets ||= Wallet::Category.where(published: true, magestil: true).includes(:assets).where(wallet_type: "other").order(position: :asc)
  end
end

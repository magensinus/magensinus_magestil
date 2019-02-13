# frozen_string_literal: true

class ParentsController < ApplicationController
  # Callbacks
  before_action :parents, only: [:index]
  before_action :wallets, only: [:index]

  # /parents
  def index
  end

  private

  # Parents
  def parents
    @parents = Parents.first!
  end

  # Wallets
  def wallets
    @wallets ||= Wallet::Category.where(magestil: true).includes(:assets).where(wallet_type: "students").order(position: :asc)
  end
end

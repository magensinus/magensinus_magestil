# frozen_string_literal: true

class TutorsController < ApplicationController
  # Callbacks
  before_action :tutors, only: [:index]
  before_action :wallets, only: [:index]

  # /tutors
  def index
  end

  private

  # Tutors
  def tutors
    @tutors = Tutors.first!
  end

  # Wallets
  def wallets
    @wallets ||= Wallet::Category.where(published: true, magestil: true).includes(:assets).where(wallet_type: "tutors").order(position: :asc)
  end
end

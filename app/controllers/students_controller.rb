# frozen_string_literal: true

class StudentsController < ApplicationController
  # Callbacks
  before_action :students, only: [:index]
  before_action :wallets, only: [:index]

  # /students
  def index
  end

  private

  # Students
  def students
    @students = Students.first!
  end

  # Wallets
  def wallets
    @wallets ||= Wallet::Category.where(published: true, magestil: true).includes(:assets).where(wallet_type: "students").order(position: :asc)
  end
end

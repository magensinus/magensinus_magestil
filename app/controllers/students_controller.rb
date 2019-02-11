# frozen_string_literal: true

class StudentsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /students
  def index
    @wallet_categories ||= Wallet::Category.where(magestil: true).includes(:assets).where(wallet_type: "students").order(position: :asc)
  end

  private

  # Object
  def object
    @object = Students.first!
  end
end

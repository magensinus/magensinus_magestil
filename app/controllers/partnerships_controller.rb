# frozen_string_literal: true

class PartnershipsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /partnerships
  def index
    @partnerships = Partnerships::Identity.where(published: true, magestil: true)
  end

  private

  def object
    @object = Partnerships.first!
  end
end

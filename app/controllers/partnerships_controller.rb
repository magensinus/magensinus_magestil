# frozen_string_literal: true

class PartnershipsController < ApplicationController
  # Callbacks
  before_action :partnerships, only: [:index]

  # /partnerships
  def index
    @partnership_roster = Partnerships::Identity.where(published: true, magestil: true)
  end

  private

  # Object
  def partnerships
    @partnerships = Partnerships.first!
  end
end

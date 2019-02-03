# frozen_string_literal: true

class PartnershipsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /partnerships
  def index
  end

  private

  def object
    @object = Partnerships.first!
  end
end

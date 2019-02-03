# frozen_string_literal: true

class CampusController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /campus
  def index
  end

  private

  def object
    @object = Campus.first!
  end
end

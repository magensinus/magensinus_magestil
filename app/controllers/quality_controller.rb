# frozen_string_literal: true

class QualityController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /quality
  def index
  end

  private

  def object
    @object = Quality.first!
  end
end

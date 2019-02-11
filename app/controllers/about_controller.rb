# frozen_string_literal: true

class AboutController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /about
  def index
  end

  private

  # Object
  def object
    @object = About.first!
  end
end

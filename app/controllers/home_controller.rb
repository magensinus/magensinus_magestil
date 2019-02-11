# frozen_string_literal: true

class HomeController < ApplicationController
  # Layout
  layout "application_landing"

  # Callbacks
  before_action :object, only: [:index]

  # /about
  def index
  end

  private

  # Object
  def object
    @object = Home.first!
  end
end

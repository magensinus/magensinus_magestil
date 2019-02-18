# frozen_string_literal: true

class AboutController < ApplicationController
  # Callbacks
  before_action :about, only: [:index]

  # /about
  def index
  end

  private

  # About
  def about
    @about = About.first!
  end
end

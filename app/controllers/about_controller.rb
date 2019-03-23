# frozen_string_literal: true

class AboutController < ApplicationController
  # Callbacks
  before_action :about, only: [:index]

  # /about
  def index
    @about_assets ||= AboutAsset.order(position: :asc)
    @about_image_assets ||= AboutAsset.where(image: true)
  end

  private

  # About
  def about
    @about = About.first!
  end
end

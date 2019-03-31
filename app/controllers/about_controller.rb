# frozen_string_literal: true

class AboutController < ApplicationController
  # Callbacks
  before_action :about, only: [:index]

  # /about
  def index
    @about_galley ||= AboutAsset.where(image: true).order(position: :asc)
    @about_assets ||= AboutAsset.where(image: false).order(position: :asc)
  end

  private

  # About
  def about
    @about = About.first!
  end
end

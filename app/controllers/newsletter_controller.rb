# frozen_string_literal: true

class NewsletterController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /newsletter
  def index
  end

  private

  def object
    @object = Newsletter.first!
  end
end

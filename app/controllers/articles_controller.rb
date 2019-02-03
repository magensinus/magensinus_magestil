# frozen_string_literal: true

class ArticlesController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /articles
  def index
  end

  private

  def object
    @object = Articles.first!
  end
end

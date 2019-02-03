# frozen_string_literal: true

class ParentsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /parents
  def index
  end

  private

  def object
    @object = Parents.first!
  end
end

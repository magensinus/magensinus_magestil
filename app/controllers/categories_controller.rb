# frozen_string_literal: true

class CategoriesController < ApplicationController
  # /categories
  def index
    redirect_to courses_path
  end

  # /categories
  def show
    redirect_to courses_path
  end
end

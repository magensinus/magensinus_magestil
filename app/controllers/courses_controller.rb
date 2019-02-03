# frozen_string_literal: true

class CoursesController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /courses
  def index
  end

  private

  def object
    @object = Courses.first!
  end
end

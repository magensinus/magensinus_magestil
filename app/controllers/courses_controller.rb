# frozen_string_literal: true

class CoursesController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]
  before_action :course, only: [:show]
  before_action :categories, only: [:index]

  # /courses
  def index
  end

  # /courses/slug
  def show
    @course_section = @course.sections.first!
    @section_assets = @course_section.section_assets.all
    @course_sections = @course.sections.all
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  def object
    @object = Courses.first!
  end

  def course
    @course ||= Academy::Course.find_by(slug: params[:id])
  end

  def categories
    @categories ||= Academy::Category.where(magestil: true, published: true)
  end
end

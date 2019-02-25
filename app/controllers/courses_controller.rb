# frozen_string_literal: true

class CoursesController < ApplicationController
  # Callbacks
  before_action :parent, only: [:index]
  before_action :course, only: [:show]
  before_action :categories, only: [:index]

  # /courses
  def index
  end

  # /courses/slug
  def show
    get_sections = @course.sections
    @sections = get_sections.all
    @section = get_sections.first! if get_sections.presence
    @assets = @section.section_assets.all if @section.presence
    respond_to do |format|
      format.html
      format.js
    end
  end

  private

  # Parent
  def parent
    @parent = Courses.first!
  end

  # Course
  def course
    @course ||= Academy::Course.find_by(slug: params[:id])
  end

  # Categories
  def categories
    @categories ||= Academy::Category.where(magestil: true, published: true)
  end
end

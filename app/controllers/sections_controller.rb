# frozen_string_literal: true

class SectionsController < ApplicationController
  # /courses/tyyt56hhhj/sections
  def show
    @course ||= Academy::Course.find_by(slug: params[:course_id])
    @course_section ||= @course.sections.find_by(slug: params[:id])
    respond_to do |format|
      format.js
    end
  end
end

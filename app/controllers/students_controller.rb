# frozen_string_literal: true

class StudentsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /students
  def index
  end

  private

  def object
    @object = Students.first!
  end
end

# frozen_string_literal: true

class TutorsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /tutors
  def index
  end

  private

  def object
    @object = Tutors.first!
  end
end

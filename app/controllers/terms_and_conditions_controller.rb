# frozen_string_literal: true

class TermsAndConditionsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /terms_and_conditions
  def index
  end

  private

  def object
    @object = TermsAndConditions.first!
  end
end

# frozen_string_literal: true

class TermsAndConditionsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /terms_and_conditions
  def index
    @legal_articles ||= Legal::Article.all
  end

  private

  # Object
  def object
    @object = TermsAndConditions.first!
  end
end

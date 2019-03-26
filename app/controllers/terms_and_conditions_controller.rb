# frozen_string_literal: true

class TermsAndConditionsController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /terms_and_conditions
  def index
    @legal_articles ||= Legal::Article.where(published: true, magestil: true).order(published_at: :desc)
  end

  private

  # Object
  def object
    @object = TermsAndConditions.first!
  end
end

# frozen_string_literal: true

class ContactController < ApplicationController
  # Callbacks
  before_action :object, only: [:index]

  # /contact
  def index
  end

  private

  # Object
  def object
    @object = Contact.first!
  end
end

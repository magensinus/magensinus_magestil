# frozen_string_literal: true

module ApplicationHelper
  # Application configuration
  def application_configuration
    Rails.configuration.application_configuration
  end

  # Vcard
  def vcard
    @vcard ||= Contact.first!
  end
end

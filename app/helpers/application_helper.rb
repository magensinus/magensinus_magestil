# frozen_string_literal: true

module ApplicationHelper
  # Application configuration
  def application_configuration
    Rails.configuration.application_configuration
  end

  # Fetch settings
  def settings
    @settings = Settings.first
  end

  # Vcard
  def vcard
    @vcard ||= Contact.first!
  end

  # Networks
  def networks
    @networks ||= Network.all
  end
end

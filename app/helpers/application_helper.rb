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

  # Recent journal articles
  def recent_journal_articles
    @recent_journal_articles ||= Journal::Article.where(published: true, magestil: true).order(published_at: :desc).limit(10)
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

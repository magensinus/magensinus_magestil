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
  def recent_journal_articles(object = "")
    @recent_journal_articles ||= Journal::Article.where(published: true, magestil: true).where.not(id: object.id).order("RANDOM()").limit(5)
  end

  # Vcard
  def vcard
    @vcard ||= Contact.first!
  end

  # Networks
  def networks
    @networks ||= Network.all
  end

  # Endorsements
  def endorsements
    @endorsements = Endorsement::Badge.order(position: :asc).all
  end

  # Recent articles
  def recent_articles
    @recent_articles ||= Journal::Article.where(published: true, magestil: true).order(created_at: :desc).first(4)
  end

  # Fetch featured article
  def fetch_featured_article
    @fetch_featured_article = Journal::Article.where(featured: true, published: true, magestil: true).first
  end
end

# frozen_string_literal: true

class ArticlesController < ApplicationController
  # Callbacks
  before_action :articles, only: [:index]
  before_action :journal_articles, only: [:index]
  before_action :journal_article, only: [:show]

  # /articles
  def index
  end

  # /articles/Hgy897jgfv
  def show
  end

  private

  # Articles
  def articles
    @articles = Articles.first!
  end

  # Journal articles
  def journal_articles
    @journal_articles ||= Journal::Article.where(published: true, magestil: true).order(published_at: :desc)
  end

  # Journal article
  def journal_article
    @journal_article = Journal::Article.find_by(slug: params[:id])
  end
end

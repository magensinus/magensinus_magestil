# frozen_string_literal: true

module Legal
  class Article < ApplicationRecord
    # Table name
    self.table_name = "legal_articles"

    # Concerns
    include Slug

    # Relationships
    has_many :assets, dependent: :destroy, foreign_key: "legal_article_id", inverse_of: false
    accepts_nested_attributes_for :assets, allow_destroy: true

    # Uploaders
    mount_uploader :thumb_box, Legal::ThumbUploader
    mount_uploader :thumb_box_magestil, Legal::ThumbUploader
    mount_uploader :cover_box, Legal::CoverUploader
    mount_uploader :cover_box_magestil, Legal::CoverUploader
  end
end

# frozen_string_literal: true

module Legal
  class Asset < ApplicationRecord
    # Table name
    self.table_name = "legal_assets"

    # Concerns
    include Slug

    # Relationships
    belongs_to :article, foreign_key: "legal_article_id", inverse_of: false

    # Uploaders
    # ---------
    # Document
    mount_uploader :document_box, Legal::DocumentUploader
    # Image
    mount_uploader :image_box, Legal::ImageUploader
  end
end

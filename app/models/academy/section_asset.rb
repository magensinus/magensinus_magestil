# frozen_string_literal: true

module Academy
  class SectionAsset < ApplicationRecord
    # Table name
    # ----------
    # Academy section assets
    self.table_name = "academy_section_assets"

    # Concerns
    # --------
    # Slug
    include Slug

    # Uploaders
    # ---------
    # Image
    # mount_uploader :image_box, Academy::ImageUploader
    # Document
    # mount_uploader :document_box, Academy::DocumentUploader

    # Relationships
    # -------------
    # Academy section
    belongs_to :section, foreign_key: "academy_section_id", inverse_of: false
    accepts_nested_attributes_for :section
  end
end

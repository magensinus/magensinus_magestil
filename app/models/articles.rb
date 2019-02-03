# frozen_string_literal: true

class Articles < ApplicationRecord
  # Table name
  self.table_name = "magestil_articles"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

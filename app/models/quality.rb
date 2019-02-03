# frozen_string_literal: true

class Quality < ApplicationRecord
  # Table name
  self.table_name = "magestil_quality"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

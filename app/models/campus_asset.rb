# frozen_string_literal: true

class CampusAsset < ApplicationRecord
  # Table name
  self.table_name = "magestil_campus_assets"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

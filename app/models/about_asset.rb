# frozen_string_literal: true

class AboutAsset < ApplicationRecord
  # Table name
  # ----------
  # Magestil about_asset
  self.table_name = "magestil_about_assets"

  # Concerns
  # --------
  # Slug
  include Slug

  # Uploaders
  # ---------
  # Image
  mount_uploader :image_box, Magestil::AboutAssetUploader
end

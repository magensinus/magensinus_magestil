# frozen_string_literal: true

class EquipmentAsset < ApplicationRecord
  # Table name
  self.table_name = "magestil_equipment_assets"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

# frozen_string_literal: true

class Campus < ApplicationRecord
  # Table name
  self.table_name = "magestil_campus"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

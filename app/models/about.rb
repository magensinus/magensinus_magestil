# frozen_string_literal: true

class About < ApplicationRecord
  # Table name
  self.table_name = "magestil_about"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

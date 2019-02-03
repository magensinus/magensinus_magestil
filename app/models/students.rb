# frozen_string_literal: true

class Students < ApplicationRecord
  # Table name
  self.table_name = "magestil_students"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

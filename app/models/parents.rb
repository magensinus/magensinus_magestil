# frozen_string_literal: true

class Parents < ApplicationRecord
  # Table name
  self.table_name = "magestil_parents"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

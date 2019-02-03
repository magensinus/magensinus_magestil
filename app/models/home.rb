# frozen_string_literal: true

class Home < ApplicationRecord
  # Table name
  self.table_name = "magestil_home"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

# frozen_string_literal: true

class Partnerships < ApplicationRecord
  # Table name
  self.table_name = "magestil_partnerships"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

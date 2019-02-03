# frozen_string_literal: true

class Newsletter < ApplicationRecord
  # Table name
  self.table_name = "magestil_newsletter"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

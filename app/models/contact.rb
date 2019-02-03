# frozen_string_literal: true

class Contact < ApplicationRecord
  # Table name
  self.table_name = "magestil_contact"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

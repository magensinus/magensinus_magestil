# frozen_string_literal: true

class Tutors < ApplicationRecord
  # Table name
  self.table_name = "magestil_tutors"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

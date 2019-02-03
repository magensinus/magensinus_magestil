# frozen_string_literal: true

class Courses < ApplicationRecord
  # Table name
  self.table_name = "magestil_courses"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :image_box, Magestil::AssetUploader
end

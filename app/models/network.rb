# frozen_string_literal: true

class Network < ApplicationRecord
  # Table name
  self.table_name = "magestil_networks"

  # Concerns
  include Slug

  # Uploaders
  mount_uploader :thumb_box, Magestil::AssetUploader
end

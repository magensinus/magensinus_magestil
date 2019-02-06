# frozen_string_literal: true

class Partnerships
  class Identity < ApplicationRecord
    # Table name
    self.table_name = "partnerships_identities"

    # Concerns
    include Slug

    # Uploaders
    mount_uploader :thumb_box, Partnership::AssetUploader
  end
end

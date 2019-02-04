# frozen_string_literal: true

module Academy
  class AssetUploader < ApplicationUploader
    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end
  end
end

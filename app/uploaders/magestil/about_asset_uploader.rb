# frozen_string_literal: true

module Magestil
  class AboutAssetUploader < ApplicationUploader
    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      "uploads/magestil/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end

    # Original
    process resize_to_limit: [1920, 1920]

    # Versions
    # --------
    # Nano
    version :thumb do
      process resize_to_fill: [480, 270, gravity = "Center"]
    end

    # Prefix variable
    def prefix
      "equipment-asset-image-"
    end

    # Override the filename of the uploaded files:
    def filename
      "#{prefix}#{model.slug}-#{Time.zone.today}.#{file.extension}" if original_filename.present?
    end
  end
end

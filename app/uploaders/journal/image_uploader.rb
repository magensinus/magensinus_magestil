# frozen_string_literal: true

module Journal
  class ImageUploader < ApplicationUploader
    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end

    # Prefix variable
    def prefix
      "journal-image-"
    end

    # Override the filename of the uploaded files:
    def filename
      "#{prefix}#{model.slug}-#{Time.zone.today}.#{file.extension}" if original_filename.present?
    end
  end
end

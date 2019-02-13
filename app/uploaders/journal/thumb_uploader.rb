# frozen_string_literal: true

module Journal
  class ThumbUploader < ApplicationUploader
    # Provide a default URL as a default if there hasn't been a file uploaded:
    def default_url
      "/images/fallback/" + [version_name, "article-thumb-default.png"].compact.join("_")
    end

    # Override the directory where uploaded files will be stored.
    # This is a sensible default for uploaders that are meant to be mounted:
    def store_dir
      # "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end

    # Prefix variable
    def prefix
      "article-thumb-"
    end

    # Versions
    version :nano
    version :tiny
    version :small
    version :medium
    version :large

    def extension_whitelist
      %w[gif png jpg jpeg]
    end
  end
end

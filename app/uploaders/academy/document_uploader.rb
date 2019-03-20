# frozen_string_literal: true

module Academy
  class DocumentUploader < ApplicationUploader
    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end
  end
end

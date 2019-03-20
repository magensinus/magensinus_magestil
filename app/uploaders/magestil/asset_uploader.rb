# frozen_string_literal: true

module Magestil
  class AssetUploader < ApplicationUploader
    def store_dir
      "uploads/magestil/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end
  end
end

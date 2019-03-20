# frozen_string_literal: true

module Journal
  class ThumbUploader < ApplicationUploader
    def default_url(*args)
      ActionController::Base.helpers.asset_path("fallback/" + [version_name, "square_thumb.png"].compact.join('_'))
    end

    def store_dir
      "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.slug}"
    end
  end
end

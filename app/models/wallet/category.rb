# frozen_string_literal: true

module Wallet
  class Category < ApplicationRecord
    # Table name
    # ----------
    # Wallet categories
    self.table_name = "wallet_categories"

    # Concerns
    # --------
    # Slug
    include Slug

    # Relationships
    has_many :assets, dependent: :destroy, foreign_key: "wallet_category_id", inverse_of: false
    accepts_nested_attributes_for :assets
  end
end

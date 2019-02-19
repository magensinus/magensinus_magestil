# frozen_string_literal: true

module Academy
  class Course < ApplicationRecord
    # Table name
    self.table_name = "academy_courses"

    # Concerns
    include Slug

    # Scoping
    scope :published, -> { where(published: true, magestil: true).where("published_at <= ?", Time.zone.now).order(position: :asc) }

    # Academy category
    belongs_to :category, optional: true, foreign_key: "academy_category_id", inverse_of: false
    # Academy sections
    has_many :sections, dependent: :destroy, foreign_key: "academy_course_id", inverse_of: false
    accepts_nested_attributes_for :sections
    # Academy course tutors
    has_many :course_tutors, dependent: :destroy, foreign_key: "academy_course_id", inverse_of: false
    # Academy tutors
    has_many :tutors, through: :course_tutors
    # Academy enrollment courses
    has_many :enrollment_courses, dependent: :destroy, foreign_key: "academy_course_id", inverse_of: false
    # Academy enrollments
    has_many :enrollments, through: :enrollment_courses

    # Uploaders
    mount_uploader :icon_box_magestil, Academy::AssetUploader
    mount_uploader :thumb_box_magestil, Academy::AssetUploader
    mount_uploader :image_box_magestil, Academy::AssetUploader
    mount_uploader :document_box_magestil, Academy::DocumentUploader
  end
end

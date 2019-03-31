# frozen_string_literal: true

class CampusController < ApplicationController
  # Callbacks
  before_action :campus, only: [:index]
  before_action :campus_gallery, only: [:index]
  before_action :equipment, only: [:index]
  before_action :equipment_gallery, only: [:index]

  # /campus
  def index
  end

  private

  # Campus
  def campus
    @campus = Campus.first!
  end

  # Campus gallery
  def campus_gallery
    @campus_gallery ||= CampusAsset.order(position: :asc)
  end

  # Equipment
  def equipment
    @equipment = Equipment.first!
  end

  # Equipment gallery
  def equipment_gallery
    @equipment_gallery ||= EquipmentAsset.order(position: :asc)
  end
end

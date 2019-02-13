# frozen_string_literal: true

class CampusController < ApplicationController
  # Callbacks
  before_action :campus, only: [:index]
  before_action :campus_assets, only: [:index]
  before_action :equipment, only: [:index]
  before_action :equipment_assets, only: [:index]

  # /campus
  def index
  end

  private

  # Campus
  def campus
    @campus = Campus.first!
  end

  # Campus assets
  def campus_assets
    @campus_assets ||= CampusAsset.all
  end

  # Equipment
  def equipment
    @equipment = Equipment.first!
  end

  # Equipment assets
  def equipment_assets
    @equipment_assets ||= EquipmentAsset.all
  end
end

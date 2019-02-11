# frozen_string_literal: true

class CampusController < ApplicationController
  # Callbacks
  before_action :campus, only: [:index]
  before_action :equipment, only: [:index]

  # /campus
  def index
    @campus_assets ||= CampusAsset.all
    @equipment_assets ||= EquipmentAsset.all
  end

  private

  # Campus
  def campus
    @campus = Campus.first!
  end

  # Equipment
  def equipment
    @equipment = Equipment.first!
  end
end

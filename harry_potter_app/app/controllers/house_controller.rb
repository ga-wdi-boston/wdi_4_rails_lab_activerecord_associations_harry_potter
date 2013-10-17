class HousesController < ApplicationController

  # GET /houses
  def index
    @houses = House.all
  end

  # GET /houses/1
  def show
    @house = House.find(params[:id])
  end


end
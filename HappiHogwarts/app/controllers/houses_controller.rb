class HousesController < ApplicationController
  def show
    @house = House.find(params[:id])
  end
  def index
    @houses = House.all
  end
end
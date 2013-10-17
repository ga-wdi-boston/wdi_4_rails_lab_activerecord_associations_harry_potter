class ProfessorsController < ApplicationController

  def show
    @professor = Professor.find(params[:id])
  end

  def index 
    @professors = Professor.all
  end

end
class StudentsController < ApplicationController
  before_action :set_student, only: [:edit, :show, :update, :destroy]
  def index
    #this is very important for nesting 
    if params[:house_id]
      @students = Student.where(house_id: params[:house_id])
    else
      @students = Student.all
    end

  end

  def show
  end

  def new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_student
    @students = Student.find(params[:id])
  end

  def students_params
    params.require(:student).permit(:name, :house_id)
  end

end




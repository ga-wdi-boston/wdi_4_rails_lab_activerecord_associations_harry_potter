class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]

  def index
      if params[:house_id]
        @students = Student.where(:house_id, params[:house_id])
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

  def edit
  end

  def update
  end

  def destroy
  end

private 

def set_student
  @student = Student.find(params[:id])
end 

def student_params
  params.require(:student).permit(:name, :house_id)
end 

end

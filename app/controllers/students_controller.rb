class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  
  def show
  end

  def index
    @students = Student.all
  end

  def new
    @student = Student.new
  end

  def create
    @student = Student.new(student_params)
    if @student.save
      redirect_to student_path
    else
      render action 'new'
    end
  end

  def edit
  end

  def update
    if @student.update(student_params)
      redirect_to @student
    else
      render action 'edit'
    end
  end

  def destroy
    @student.destroy
    redirect_to todos_path
  end

  private

  def set_student
    @student = Student.find(params[:id])
  end

  def student_params
    params.require(:todo).permit(:name, :house)
  end
end

class TeachersController < ApplicationController
  before_action :set_teacher, only: [:show, :edit, :update, :destroy]

  def index
    if params[:house_id]
      @teachers = Teacher.where(house_id: params[:house_id])
    else
      @teachers = Teacher.all
    end
  end

  def show
  end

  def new
    @teacher = Teacher.new
  end

  def create
    @teacher = Teacher.new(teacher_params)
    if @teacher.save
      redirect_to @teacher
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @teacher.update(teacher_params)
      redirect_to @teacher
    else
      render action: 'edit'
    end
  end

  def destroy
    @teacher.destroy
    redirect_to teachers_url
  end

  private

  def set_teacher
    @teacher = Teacher.find(params[:id])
  end

  def teacher_params
    params.require(:teacher).permit(:name, :house_id)
  end

end
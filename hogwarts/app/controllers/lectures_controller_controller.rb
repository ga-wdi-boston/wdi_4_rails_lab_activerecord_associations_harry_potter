class LecturesControllerController < ApplicationController

  before_action :set_lecture, only: [:show, :edit, :update, :destroy]

  def index
    if params[:house_id]
      @lectures = Lecture.where(house_id: params[:house_id])
    else
      @lectures = Lecture.all
    end
  end

  def show
  end

  def new
    @lecture = Lecture.new
  end

  def create
    @lecture = Lecture.new(lecture_params)
    if @lecture.save
      redirect_to @lecture
    else
      render action: 'new'
    end
  end

  def edit
  end

  def update
    if @lecture.update(lecture_params)
      redirect_to @lecture
    else
      render action: 'edit'
    end
  end

  def destroy
    @lecture.destroy
    redirect_to lectures_url
  end

  private

  def set_lecture
    @lecture = Lecture.find(params[:id])
  end

  def lecture_params
    params.require(:lecture).permit(:name, :student_id, :teacher_id)
  end

end

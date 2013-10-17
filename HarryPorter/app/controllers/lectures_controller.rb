class LecturesController < ApplicationController

  before_action :set_lecture, only: [:show, :edit, :update, :destroy]

  def index
    if params[:house_id]
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
    @lecture.update(lecture_params)
    if @lecture.save 
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
    params.require(:lecture).permit(:name, :description)
  end 
  
end
class LecturesController < ApplicationController

  class LecturesController < ApplicationController
  before_action :set_student, only: [:edit, :show, :update, :destroy]
  def index
      @lectures = Lecture.all
  end

  def show
  end

  def new
    @lecture = Lecture.new
  end

  def edit 

  end


  def create
    @lecture = Lecture.new(Lectures_params)
      if @Lecture.save
        redirect_to @Lecture
      else
        render action: 'new'
      end
  end

  def update
    if @lecture.update(lectures_params)
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

  def set_Lecture
    @lecture = Lecture.find(params[:id])
  end

  def Lectures_params
    params.require(:lecture).permit(:name, :house_id)
  end

end





end

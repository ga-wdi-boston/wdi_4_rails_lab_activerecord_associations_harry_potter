class LecturesController < ApplicationController
before_action :set_lecture, only: [:show, :edit, :update, :destroy]


def show
end

def index
  @lectures = Lecture.all
end

def create
  @lecture = Lecture.new(lecture_params)
  if @lecture.save
    redirect_to @lecture
  else
    render action: 'new'
  end
end

def new
  @lecture = Lecture.new
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
  params.require(:lecture).permit(:topic, :weekday, :professor_id, :student_id)
end

end
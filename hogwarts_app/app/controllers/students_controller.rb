class StudentsController < ApplicationController
	before_action :set_student, only: [:show, :edit, :update, :destroy]

	def index
		@students = Student.all
	end

	def show
	end

	def new
		@student = Student.new
	end

	def edit
	end

	def create
		@student = Student.new(student_params)
	end

	def update
	end

	def destroy
		@student.destroy
	end

	private

	def set_student
		@student = Student.find(params[:id])
	end

	def student_params
		params.require(:student).permit(:name, :year, :house_i)
	end

end
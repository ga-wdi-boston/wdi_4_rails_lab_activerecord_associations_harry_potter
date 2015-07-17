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

        # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

        def destroy
                @student.destroy
        end

        private

        def set_student
                @student = Student.find(params[:id])
        end

        def student_params
                params.require(:student).permit(:first_name, :last_name, :house_id)
        end

end
class StudentSkillsController < ApplicationController
  before_action :set_student_skill, only: [:show, :edit, :update, :destroy]

  # GET /student_skills
  def index
    @student_skills = StudentSkill.all
  end

  # GET /student_skills/1
  def show
  end

  # GET /student_skills/new
  def new
    @student_skill = StudentSkill.new
  end

  # GET /student_skills/1/edit
  def edit
  end

  # POST /student_skills
  def create
    @student_skill = StudentSkill.new(studentskill_params)

    respond_to do |format|
      if @student_skill.save
        format.html { redirect_to @student_skill, notice: 'A student skill was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /stduent_skills/1
  def update
    respond_to do |format|
      if @student_skill.update(student_params)
        format.html { redirect_to @student_skill, notice: 'The student skill was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /student_skills/1
  def destroy
    @student_skill.destroy
    respond_to do |format|
      format.html { redirect_to students_skills_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student_skill
      @student_skill = StudentSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_skill_params
      params.require(:student_skill).permit(:level)
    end
end
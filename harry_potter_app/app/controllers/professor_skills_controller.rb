class ProfessorSkillsController < ApplicationController
  before_action :set_professor_skill, only: [:edit, :update, :destroy]

  def index
    @sections = Section.all
    @professors = Professor.all
    @students = Student.all
    @lectures = Lecture.all
    @houses = House.all
  end

  # GET /professor_skills/new
  def new
    @professor_skill = ProfessorSkill.new
  end

  # GET /professor_skills/1/edit
  def edit
  end

  # POST /professor_skills
  def create
    @professor_skill = ProfessorSkill.new(professor_skill_params)

    respond_to do |format|
      if @professor_skill.save
        format.html { redirect_to professor_path(@professor_skill.professor_id), notice: 'A professor skill was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /professor_skills/1
  def update
    respond_to do |format|
      if @professor_skill.update(professor_skill_params)
        format.html { redirect_to professor_path(@professor_skill.professor_id), notice: 'The professor skill was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /professor_skills/1
  def destroy
    @professor_skill.destroy
    respond_to do |format|
      format.html { redirect_to professors_skills_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor_skill
      @professor_skill = ProfessorSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_skill_params
      params.require(:professor_skill).permit(:level)
    end
end
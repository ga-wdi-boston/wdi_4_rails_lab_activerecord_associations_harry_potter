class SkillsController < ApplicationController
  
  def index
    @student = Student.find(params[:student_id])
    @teacher = Teacher.find(params[:teacher_id])
    @skills = Skill.where(student_id: params[:student_id])
  end


  def edit
  	@skill = Skill.find(params[:id])
  end

  def update
    if @skill.update(skill_params)
      redirect_to students
    else
      render action: 'edit'
    end
  end

  private
  def skill_params
    params.require(:skill).permit(:student_id, :teacher_id, :spell_id, :skill_level)
  end

end
class SkillsController < ApplicationController
  before_action :set_magician

  def index
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

  def set_magician
    if params[:student_id]
      @student = Student.find(params[:student_id])
    elsif params[:teacher_id]
      @teacher = Teacher.find(params[:teacher_id])
    end
   
  end

end
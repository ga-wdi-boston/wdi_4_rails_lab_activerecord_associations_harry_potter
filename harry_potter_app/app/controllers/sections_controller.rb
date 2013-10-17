class SectionsController < ApplicationController
  before_action :set_section, only: [:show, :edit, :update, :destroy]

  # GET /sections
  def index
    @sections = Section.all
  end

  # GET /sections/1
  def show
  end

  # GET /sections/new
  def new
    @section = Section.new
  end

  # GET /sections/1/edit
  def edit
  end

  # POST /sections
  def create
    @section = Section.new(section_params)

    respond_to do |format|
      if @section.save
        format.html { redirect_to @section, notice: 'Section was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /sections/1
  def update
    respond_to do |format|
      if @section.update(section_params)
        format.html { redirect_to @section, notice: 'Section was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /sections/1
  def destroy
    @section.destroy
    respond_to do |format|
      format.html { redirect_to sections_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_section
      @section = Section.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def section_params
      params.require(:section).permit(:time, :lecture_id, :professor_id)
    end
end
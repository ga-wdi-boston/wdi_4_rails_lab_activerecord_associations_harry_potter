class ProfessorsController < ApplicationController
  before_action :set_professor, only: [:show, :edit, :update, :destroy]

  # GET /professors
  def index
    @professors = Professor.all
  end

  # GET /professors/1
  def show
  end

  # GET /professors/new
  def new
    @professor = Professor.new
  end

  # GET /professors/1/edit
  def edit
  end

  # POST /professors
  def create
    @professor = Professor.new(professor_params)

    respond_to do |format|
      if @professor.save
        format.html { redirect_to @professor, notice: 'Professor was successfully added.' }
      else
        format.html { render action: 'new' }
      end
    end
  end

  # PATCH/PUT /professors/1
  def update
    respond_to do |format|
      if @professor.update(professor_params)
        format.html { redirect_to @professor, notice: 'Professor was successfully updated.' }
      else
        format.html { render action: 'edit' }
      end
    end
  end

  # DELETE /professors/1
  def destroy
    @professor.destroy
    respond_to do |format|
      format.html { redirect_to professors_url }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_professor
      @professor = Professor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def professor_params
      params.require(:professor).permit(:first_name, :last_name, :image)
    end
end
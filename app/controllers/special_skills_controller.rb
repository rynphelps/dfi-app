class SpecialSkillsController < ApplicationController
  before_action :set_special_skill, only: [:show, :edit, :update, :destroy]

  # GET /special_skills
  # GET /special_skills.json
  def index
    @special_skills = SpecialSkill.all
  end

  # GET /special_skills/1
  # GET /special_skills/1.json
  def show
  end

  # GET /special_skills/new
  def new
    @special_skill = SpecialSkill.new
  end

  # GET /special_skills/1/edit
  def edit
  end

  # POST /special_skills
  # POST /special_skills.json
  def create
    @special_skill = SpecialSkill.new(special_skill_params)

    respond_to do |format|
      if @special_skill.save
        format.html { redirect_to @special_skill, notice: 'Special skill was successfully created.' }
        format.json { render :show, status: :created, location: @special_skill }
      else
        format.html { render :new }
        format.json { render json: @special_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /special_skills/1
  # PATCH/PUT /special_skills/1.json
  def update
    respond_to do |format|
      if @special_skill.update(special_skill_params)
        format.html { redirect_to @special_skill, notice: 'Special skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @special_skill }
      else
        format.html { render :edit }
        format.json { render json: @special_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /special_skills/1
  # DELETE /special_skills/1.json
  def destroy
    @special_skill.destroy
    respond_to do |format|
      format.html { redirect_to special_skills_url, notice: 'Special skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_special_skill
      @special_skill = SpecialSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def special_skill_params
      params.require(:special_skill).permit(:skill)
    end
end

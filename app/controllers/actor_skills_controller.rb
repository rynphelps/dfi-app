class ActorSkillsController < ApplicationController
  before_action :set_actor_skill, only: [:show, :edit, :update, :destroy]

  # GET /actor_skills
  # GET /actor_skills.json
  def index
    @actor_skills = ActorSkill.all
  end

  # GET /actor_skills/1
  # GET /actor_skills/1.json
  def show
  end

  # GET /actor_skills/new
  def new
    @actor_skill = ActorSkill.new
  end

  # GET /actor_skills/1/edit
  def edit
  end

  # POST /actor_skills
  # POST /actor_skills.json
  def create
    @actor_skill = ActorSkill.new(actor_skill_params)

    respond_to do |format|
      if @actor_skill.save
        format.html { redirect_to @actor_skill, notice: 'Actor skill was successfully created.' }
        format.json { render :show, status: :created, location: @actor_skill }
      else
        format.html { render :new }
        format.json { render json: @actor_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_skills/1
  # PATCH/PUT /actor_skills/1.json
  def update
    respond_to do |format|
      if @actor_skill.update(actor_skill_params)
        format.html { redirect_to @actor_skill, notice: 'Actor skill was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_skill }
      else
        format.html { render :edit }
        format.json { render json: @actor_skill.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_skills/1
  # DELETE /actor_skills/1.json
  def destroy
    @actor_skill.destroy
    respond_to do |format|
      format.html { redirect_to actor_skills_url, notice: 'Actor skill was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_skill
      @actor_skill = ActorSkill.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_skill_params
      params.require(:actor_skill).permit(:special_skill_id, :actor_id)
    end
end

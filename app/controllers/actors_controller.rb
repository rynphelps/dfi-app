class ActorsController < ApplicationController
  before_action :set_actor, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /actors
  # GET /actors.json
  def index
    unless current_user.admin? or current_user.casting_director?
      redirect_to :back, :alert => "Access denied."
    end
    @actors = Actor.all
  end

  # GET /actors/1
  # GET /actors/1.json
  def show
    @actor = Actor.find(params[:id])
    unless current_user.admin? or current_user.casting_director?
      unless @actor == current_user
        redirect_to :back, :alert => "Access denied."
      end
    end
  end

  # GET /actors/new
  def new
    @actor = Actor.new
  end

  # GET /actors/1/edit
  def edit
  end

  # POST /actors
  # POST /actors.json
  def create
    @actor = Actor.new(actor_params)
    
    respond_to do |format|
      if @actor.save
        format.html { redirect_to @actor, notice: 'Actor was successfully created.' }
        format.json { render :show, status: :created, location: @actor }
      else
        format.html { render :new }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actors/1
  # PATCH/PUT /actors/1.json
  def update
    @actor = Actor.find(params[:id])
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
    respond_to do |format|
      if @actor.update(actor_params)
        format.html { redirect_to @actor, notice: 'Actor was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor }
      else
        format.html { render :edit }
        format.json { render json: @actor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actors/1
  # DELETE /actors/1.json
  def destroy
    actor = Actor.find(params[:id])
    unless current_user.admin?
      redirect_to :back, :alert => "Access denied."
    end
    actor.destroy
    redirect_to actors_path, :notice => "Actor deleted."
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor
      @actor = Actor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_params
      params.require(:actor).permit(:date_of_birth, :gender, :headshot_link, :instagram, :release_form_link, :medical_form_link, :availability, :phone_number, :actor_weight_id, :actor_height_id, :nationality_id, :eye_color_id, :hair_color_id)
    end
end

class ActorAuditionsController < ApplicationController
  before_action :set_actor_audition, only: [:show, :edit, :update, :destroy]

  # GET /actor_auditions
  # GET /actor_auditions.json
  def index
    @actor_auditions = ActorAudition.all
  end

  # GET /actor_auditions/1
  # GET /actor_auditions/1.json
  def show
  end

  # GET /actor_auditions/new
  def new
    @actor_audition = ActorAudition.new
  end

  # GET /actor_auditions/1/edit
  def edit
  end

  # POST /actor_auditions
  # POST /actor_auditions.json
  def create
    @actor_audition = ActorAudition.new(actor_audition_params)

    respond_to do |format|
      if @actor_audition.save
        format.html { redirect_to @actor_audition, notice: 'Actor audition was successfully created.' }
        format.json { render :show, status: :created, location: @actor_audition }
      else
        format.html { render :new }
        format.json { render json: @actor_audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_auditions/1
  # PATCH/PUT /actor_auditions/1.json
  def update
    respond_to do |format|
      if @actor_audition.update(actor_audition_params)
        format.html { redirect_to @actor_audition, notice: 'Actor audition was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_audition }
      else
        format.html { render :edit }
        format.json { render json: @actor_audition.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_auditions/1
  # DELETE /actor_auditions/1.json
  def destroy
    @actor_audition.destroy
    respond_to do |format|
      format.html { redirect_to actor_auditions_url, notice: 'Actor audition was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_audition
      @actor_audition = ActorAudition.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_audition_params
      params.require(:actor_audition).permit(:actor_id, :audition_link_id)
    end
end

class ActorWeightsController < ApplicationController
  before_action :set_actor_weight, only: [:show, :edit, :update, :destroy]

  # GET /actor_weights
  # GET /actor_weights.json
  def index
    @actor_weights = ActorWeight.all
  end

  # GET /actor_weights/1
  # GET /actor_weights/1.json
  def show
  end

  # GET /actor_weights/new
  def new
    @actor_weight = ActorWeight.new
  end

  # GET /actor_weights/1/edit
  def edit
  end

  # POST /actor_weights
  # POST /actor_weights.json
  def create
    @actor_weight = ActorWeight.new(actor_weight_params)

    respond_to do |format|
      if @actor_weight.save
        format.html { redirect_to @actor_weight, notice: 'Actor weight was successfully created.' }
        format.json { render :show, status: :created, location: @actor_weight }
      else
        format.html { render :new }
        format.json { render json: @actor_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_weights/1
  # PATCH/PUT /actor_weights/1.json
  def update
    respond_to do |format|
      if @actor_weight.update(actor_weight_params)
        format.html { redirect_to @actor_weight, notice: 'Actor weight was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_weight }
      else
        format.html { render :edit }
        format.json { render json: @actor_weight.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_weights/1
  # DELETE /actor_weights/1.json
  def destroy
    @actor_weight.destroy
    respond_to do |format|
      format.html { redirect_to actor_weights_url, notice: 'Actor weight was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_weight
      @actor_weight = ActorWeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_weight_params
      params.require(:actor_weight).permit(:weight)
    end
end

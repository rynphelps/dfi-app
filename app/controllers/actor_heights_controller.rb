class ActorHeightsController < ApplicationController
  before_action :set_actor_height, only: [:show, :edit, :update, :destroy]

  # GET /actor_heights
  # GET /actor_heights.json
  def index
    @actor_heights = ActorHeight.all
  end

  # GET /actor_heights/1
  # GET /actor_heights/1.json
  def show
  end

  # GET /actor_heights/new
  def new
    @actor_height = ActorHeight.new
  end

  # GET /actor_heights/1/edit
  def edit
  end

  # POST /actor_heights
  # POST /actor_heights.json
  def create
    @actor_height = ActorHeight.new(actor_height_params)

    respond_to do |format|
      if @actor_height.save
        format.html { redirect_to @actor_height, notice: 'Actor height was successfully created.' }
        format.json { render :show, status: :created, location: @actor_height }
      else
        format.html { render :new }
        format.json { render json: @actor_height.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_heights/1
  # PATCH/PUT /actor_heights/1.json
  def update
    respond_to do |format|
      if @actor_height.update(actor_height_params)
        format.html { redirect_to @actor_height, notice: 'Actor height was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_height }
      else
        format.html { render :edit }
        format.json { render json: @actor_height.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_heights/1
  # DELETE /actor_heights/1.json
  def destroy
    @actor_height.destroy
    respond_to do |format|
      format.html { redirect_to actor_heights_url, notice: 'Actor height was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_height
      @actor_height = ActorHeight.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_height_params
      params.require(:actor_height).permit(:height)
    end
end

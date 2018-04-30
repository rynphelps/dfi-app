class ActorPicturesController < ApplicationController
  before_action :set_actor_picture, only: [:show, :edit, :update, :destroy]

  # GET /actor_pictures
  # GET /actor_pictures.json
  def index
    @actor_pictures = ActorPicture.all
  end

  # GET /actor_pictures/1
  # GET /actor_pictures/1.json
  def show
  end

  # GET /actor_pictures/new
  def new
    @actor_picture = ActorPicture.new
  end

  # GET /actor_pictures/1/edit
  def edit
  end

  # POST /actor_pictures
  # POST /actor_pictures.json
  def create
    @actor_picture = ActorPicture.new(actor_picture_params)

    respond_to do |format|
      if @actor_picture.save
        format.html { redirect_to @actor_picture, notice: 'Actor picture was successfully created.' }
        format.json { render :show, status: :created, location: @actor_picture }
      else
        format.html { render :new }
        format.json { render json: @actor_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_pictures/1
  # PATCH/PUT /actor_pictures/1.json
  def update
    respond_to do |format|
      if @actor_picture.update(actor_picture_params)
        format.html { redirect_to @actor_picture, notice: 'Actor picture was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_picture }
      else
        format.html { render :edit }
        format.json { render json: @actor_picture.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_pictures/1
  # DELETE /actor_pictures/1.json
  def destroy
    @actor_picture.destroy
    respond_to do |format|
      format.html { redirect_to actor_pictures_url, notice: 'Actor picture was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_picture
      @actor_picture = ActorPicture.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_picture_params
      params.require(:actor_picture).permit(:picture_link_id, :actor_id)
    end
end

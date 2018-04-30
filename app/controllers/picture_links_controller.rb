class PictureLinksController < ApplicationController
  before_action :set_picture_link, only: [:show, :edit, :update, :destroy]

  # GET /picture_links
  # GET /picture_links.json
  def index
    @picture_links = PictureLink.all
  end

  # GET /picture_links/1
  # GET /picture_links/1.json
  def show
  end

  # GET /picture_links/new
  def new
    @picture_link = PictureLink.new
  end

  # GET /picture_links/1/edit
  def edit
  end

  # POST /picture_links
  # POST /picture_links.json
  def create
    @picture_link = PictureLink.new(picture_link_params)

    respond_to do |format|
      if @picture_link.save
        format.html { redirect_to @picture_link, notice: 'Picture link was successfully created.' }
        format.json { render :show, status: :created, location: @picture_link }
      else
        format.html { render :new }
        format.json { render json: @picture_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /picture_links/1
  # PATCH/PUT /picture_links/1.json
  def update
    respond_to do |format|
      if @picture_link.update(picture_link_params)
        format.html { redirect_to @picture_link, notice: 'Picture link was successfully updated.' }
        format.json { render :show, status: :ok, location: @picture_link }
      else
        format.html { render :edit }
        format.json { render json: @picture_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /picture_links/1
  # DELETE /picture_links/1.json
  def destroy
    @picture_link.destroy
    respond_to do |format|
      format.html { redirect_to picture_links_url, notice: 'Picture link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_picture_link
      @picture_link = PictureLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def picture_link_params
      params.require(:picture_link).permit(:photo)
    end
end

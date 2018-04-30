class HairColorsController < ApplicationController
  before_action :set_hair_color, only: [:show, :edit, :update, :destroy]

  # GET /hair_colors
  # GET /hair_colors.json
  def index
    @hair_colors = HairColor.all
  end

  # GET /hair_colors/1
  # GET /hair_colors/1.json
  def show
  end

  # GET /hair_colors/new
  def new
    @hair_color = HairColor.new
  end

  # GET /hair_colors/1/edit
  def edit
  end

  # POST /hair_colors
  # POST /hair_colors.json
  def create
    @hair_color = HairColor.new(hair_color_params)

    respond_to do |format|
      if @hair_color.save
        format.html { redirect_to @hair_color, notice: 'Hair color was successfully created.' }
        format.json { render :show, status: :created, location: @hair_color }
      else
        format.html { render :new }
        format.json { render json: @hair_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hair_colors/1
  # PATCH/PUT /hair_colors/1.json
  def update
    respond_to do |format|
      if @hair_color.update(hair_color_params)
        format.html { redirect_to @hair_color, notice: 'Hair color was successfully updated.' }
        format.json { render :show, status: :ok, location: @hair_color }
      else
        format.html { render :edit }
        format.json { render json: @hair_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hair_colors/1
  # DELETE /hair_colors/1.json
  def destroy
    @hair_color.destroy
    respond_to do |format|
      format.html { redirect_to hair_colors_url, notice: 'Hair color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hair_color
      @hair_color = HairColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hair_color_params
      params.require(:hair_color).permit(:color)
    end
end

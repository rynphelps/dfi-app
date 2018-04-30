class EyeColorsController < ApplicationController
  before_action :set_eye_color, only: [:show, :edit, :update, :destroy]

  # GET /eye_colors
  # GET /eye_colors.json
  def index
    @eye_colors = EyeColor.all
  end

  # GET /eye_colors/1
  # GET /eye_colors/1.json
  def show
  end

  # GET /eye_colors/new
  def new
    @eye_color = EyeColor.new
  end

  # GET /eye_colors/1/edit
  def edit
  end

  # POST /eye_colors
  # POST /eye_colors.json
  def create
    @eye_color = EyeColor.new(eye_color_params)

    respond_to do |format|
      if @eye_color.save
        format.html { redirect_to @eye_color, notice: 'Eye color was successfully created.' }
        format.json { render :show, status: :created, location: @eye_color }
      else
        format.html { render :new }
        format.json { render json: @eye_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /eye_colors/1
  # PATCH/PUT /eye_colors/1.json
  def update
    respond_to do |format|
      if @eye_color.update(eye_color_params)
        format.html { redirect_to @eye_color, notice: 'Eye color was successfully updated.' }
        format.json { render :show, status: :ok, location: @eye_color }
      else
        format.html { render :edit }
        format.json { render json: @eye_color.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /eye_colors/1
  # DELETE /eye_colors/1.json
  def destroy
    @eye_color.destroy
    respond_to do |format|
      format.html { redirect_to eye_colors_url, notice: 'Eye color was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_eye_color
      @eye_color = EyeColor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def eye_color_params
      params.require(:eye_color).permit(:color)
    end
end

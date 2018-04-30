class FilmCastersController < ApplicationController
  before_action :set_film_caster, only: [:show, :edit, :update, :destroy]

  # GET /film_casters
  # GET /film_casters.json
  def index
    @film_casters = FilmCaster.all
  end

  # GET /film_casters/1
  # GET /film_casters/1.json
  def show
  end

  # GET /film_casters/new
  def new
    @film_caster = FilmCaster.new
  end

  # GET /film_casters/1/edit
  def edit
  end

  # POST /film_casters
  # POST /film_casters.json
  def create
    @film_caster = FilmCaster.new(film_caster_params)

    respond_to do |format|
      if @film_caster.save
        format.html { redirect_to @film_caster, notice: 'Film caster was successfully created.' }
        format.json { render :show, status: :created, location: @film_caster }
      else
        format.html { render :new }
        format.json { render json: @film_caster.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /film_casters/1
  # PATCH/PUT /film_casters/1.json
  def update
    respond_to do |format|
      if @film_caster.update(film_caster_params)
        format.html { redirect_to @film_caster, notice: 'Film caster was successfully updated.' }
        format.json { render :show, status: :ok, location: @film_caster }
      else
        format.html { render :edit }
        format.json { render json: @film_caster.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /film_casters/1
  # DELETE /film_casters/1.json
  def destroy
    @film_caster.destroy
    respond_to do |format|
      format.html { redirect_to film_casters_url, notice: 'Film caster was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_film_caster
      @film_caster = FilmCaster.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def film_caster_params
      params.require(:film_caster).permit(:casting_director_id, :film_id)
    end
end

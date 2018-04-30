class ActorLanguagesController < ApplicationController
  before_action :set_actor_language, only: [:show, :edit, :update, :destroy]

  # GET /actor_languages
  # GET /actor_languages.json
  def index
    @actor_languages = ActorLanguage.all
  end

  # GET /actor_languages/1
  # GET /actor_languages/1.json
  def show
  end

  # GET /actor_languages/new
  def new
    @actor_language = ActorLanguage.new
  end

  # GET /actor_languages/1/edit
  def edit
  end

  # POST /actor_languages
  # POST /actor_languages.json
  def create
    @actor_language = ActorLanguage.new(actor_language_params)

    respond_to do |format|
      if @actor_language.save
        format.html { redirect_to @actor_language, notice: 'Actor language was successfully created.' }
        format.json { render :show, status: :created, location: @actor_language }
      else
        format.html { render :new }
        format.json { render json: @actor_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_languages/1
  # PATCH/PUT /actor_languages/1.json
  def update
    respond_to do |format|
      if @actor_language.update(actor_language_params)
        format.html { redirect_to @actor_language, notice: 'Actor language was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_language }
      else
        format.html { render :edit }
        format.json { render json: @actor_language.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_languages/1
  # DELETE /actor_languages/1.json
  def destroy
    @actor_language.destroy
    respond_to do |format|
      format.html { redirect_to actor_languages_url, notice: 'Actor language was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_language
      @actor_language = ActorLanguage.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_language_params
      params.require(:actor_language).permit(:actor_id, :language_dialect_id)
    end
end

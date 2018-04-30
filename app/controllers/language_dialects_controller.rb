class LanguageDialectsController < ApplicationController
  before_action :set_language_dialect, only: [:show, :edit, :update, :destroy]

  # GET /language_dialects
  # GET /language_dialects.json
  def index
    @language_dialects = LanguageDialect.all
  end

  # GET /language_dialects/1
  # GET /language_dialects/1.json
  def show
  end

  # GET /language_dialects/new
  def new
    @language_dialect = LanguageDialect.new
  end

  # GET /language_dialects/1/edit
  def edit
  end

  # POST /language_dialects
  # POST /language_dialects.json
  def create
    @language_dialect = LanguageDialect.new(language_dialect_params)

    respond_to do |format|
      if @language_dialect.save
        format.html { redirect_to @language_dialect, notice: 'Language dialect was successfully created.' }
        format.json { render :show, status: :created, location: @language_dialect }
      else
        format.html { render :new }
        format.json { render json: @language_dialect.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /language_dialects/1
  # PATCH/PUT /language_dialects/1.json
  def update
    respond_to do |format|
      if @language_dialect.update(language_dialect_params)
        format.html { redirect_to @language_dialect, notice: 'Language dialect was successfully updated.' }
        format.json { render :show, status: :ok, location: @language_dialect }
      else
        format.html { render :edit }
        format.json { render json: @language_dialect.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /language_dialects/1
  # DELETE /language_dialects/1.json
  def destroy
    @language_dialect.destroy
    respond_to do |format|
      format.html { redirect_to language_dialects_url, notice: 'Language dialect was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_language_dialect
      @language_dialect = LanguageDialect.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def language_dialect_params
      params.require(:language_dialect).permit(:language)
    end
end

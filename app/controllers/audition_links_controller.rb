class AuditionLinksController < ApplicationController
  before_action :set_audition_link, only: [:show, :edit, :update, :destroy]

  # GET /audition_links
  # GET /audition_links.json
  def index
    @audition_links = AuditionLink.all
  end

  # GET /audition_links/1
  # GET /audition_links/1.json
  def show
  end

  # GET /audition_links/new
  def new
    @audition_link = AuditionLink.new
  end

  # GET /audition_links/1/edit
  def edit
  end

  # POST /audition_links
  # POST /audition_links.json
  def create
    @audition_link = AuditionLink.new(audition_link_params)

    respond_to do |format|
      if @audition_link.save
        format.html { redirect_to @audition_link, notice: 'Audition link was successfully created.' }
        format.json { render :show, status: :created, location: @audition_link }
      else
        format.html { render :new }
        format.json { render json: @audition_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /audition_links/1
  # PATCH/PUT /audition_links/1.json
  def update
    respond_to do |format|
      if @audition_link.update(audition_link_params)
        format.html { redirect_to @audition_link, notice: 'Audition link was successfully updated.' }
        format.json { render :show, status: :ok, location: @audition_link }
      else
        format.html { render :edit }
        format.json { render json: @audition_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /audition_links/1
  # DELETE /audition_links/1.json
  def destroy
    @audition_link.destroy
    respond_to do |format|
      format.html { redirect_to audition_links_url, notice: 'Audition link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_audition_link
      @audition_link = AuditionLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def audition_link_params
      params.require(:audition_link).permit(:audition)
    end
end

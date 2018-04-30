class OtherFormsLinksController < ApplicationController
  before_action :set_other_forms_link, only: [:show, :edit, :update, :destroy]

  # GET /other_forms_links
  # GET /other_forms_links.json
  def index
    @other_forms_links = OtherFormsLink.all
  end

  # GET /other_forms_links/1
  # GET /other_forms_links/1.json
  def show
  end

  # GET /other_forms_links/new
  def new
    @other_forms_link = OtherFormsLink.new
  end

  # GET /other_forms_links/1/edit
  def edit
  end

  # POST /other_forms_links
  # POST /other_forms_links.json
  def create
    @other_forms_link = OtherFormsLink.new(other_forms_link_params)

    respond_to do |format|
      if @other_forms_link.save
        format.html { redirect_to @other_forms_link, notice: 'Other forms link was successfully created.' }
        format.json { render :show, status: :created, location: @other_forms_link }
      else
        format.html { render :new }
        format.json { render json: @other_forms_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /other_forms_links/1
  # PATCH/PUT /other_forms_links/1.json
  def update
    respond_to do |format|
      if @other_forms_link.update(other_forms_link_params)
        format.html { redirect_to @other_forms_link, notice: 'Other forms link was successfully updated.' }
        format.json { render :show, status: :ok, location: @other_forms_link }
      else
        format.html { render :edit }
        format.json { render json: @other_forms_link.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /other_forms_links/1
  # DELETE /other_forms_links/1.json
  def destroy
    @other_forms_link.destroy
    respond_to do |format|
      format.html { redirect_to other_forms_links_url, notice: 'Other forms link was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_other_forms_link
      @other_forms_link = OtherFormsLink.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def other_forms_link_params
      params.require(:other_forms_link).permit(:form_link)
    end
end

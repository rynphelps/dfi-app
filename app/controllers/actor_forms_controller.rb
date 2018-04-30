class ActorFormsController < ApplicationController
  before_action :set_actor_form, only: [:show, :edit, :update, :destroy]

  # GET /actor_forms
  # GET /actor_forms.json
  def index
    @actor_forms = ActorForm.all
  end

  # GET /actor_forms/1
  # GET /actor_forms/1.json
  def show
  end

  # GET /actor_forms/new
  def new
    @actor_form = ActorForm.new
  end

  # GET /actor_forms/1/edit
  def edit
  end

  # POST /actor_forms
  # POST /actor_forms.json
  def create
    @actor_form = ActorForm.new(actor_form_params)

    respond_to do |format|
      if @actor_form.save
        format.html { redirect_to @actor_form, notice: 'Actor form was successfully created.' }
        format.json { render :show, status: :created, location: @actor_form }
      else
        format.html { render :new }
        format.json { render json: @actor_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /actor_forms/1
  # PATCH/PUT /actor_forms/1.json
  def update
    respond_to do |format|
      if @actor_form.update(actor_form_params)
        format.html { redirect_to @actor_form, notice: 'Actor form was successfully updated.' }
        format.json { render :show, status: :ok, location: @actor_form }
      else
        format.html { render :edit }
        format.json { render json: @actor_form.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /actor_forms/1
  # DELETE /actor_forms/1.json
  def destroy
    @actor_form.destroy
    respond_to do |format|
      format.html { redirect_to actor_forms_url, notice: 'Actor form was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_actor_form
      @actor_form = ActorForm.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def actor_form_params
      params.require(:actor_form).permit(:other_forms_link_id, :actor_id)
    end
end

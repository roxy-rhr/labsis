class MalariaController < ApplicationController
  before_action :set_malarium, only: [:show, :edit, :update, :destroy]

  # GET /malaria
  # GET /malaria.json
  def index
    @malaria = Malarium.all
  end

  # GET /malaria/1
  # GET /malaria/1.json
  def show
  end

  # GET /malaria/new
  def new
    @malarium = Malarium.new
  end

  # GET /malaria/1/edit
  def edit
  end

  # POST /malaria
  # POST /malaria.json
  def create
    @malarium = Malarium.new(malarium_params)

    respond_to do |format|
      if @malarium.save
        format.html { redirect_to @malarium, notice: 'Malarium was successfully created.' }
        format.json { render action: 'show', status: :created, location: @malarium }
      else
        format.html { render action: 'new' }
        format.json { render json: @malarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /malaria/1
  # PATCH/PUT /malaria/1.json
  def update
    respond_to do |format|
      if @malarium.update(malarium_params)
        format.html { redirect_to @malarium, notice: 'Malarium was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @malarium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /malaria/1
  # DELETE /malaria/1.json
  def destroy
    @malarium.destroy
    respond_to do |format|
      format.html { redirect_to malaria_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_malarium
      @malarium = Malarium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def malarium_params
      params.require(:malarium).permit(:paciente_id, :usuario_id, :fecha_toma_muestra_malaria, :fecha_entrega, :hospital_id)
    end
end

class LabTuberculosesController < ApplicationController
  before_action :set_lab_tuberculose, only: [:show, :edit, :update, :destroy]

  # GET /lab_tuberculoses
  # GET /lab_tuberculoses.json
  def index
    @lab_tuberculoses = LabTuberculosis.all
  end

  # GET /lab_tuberculoses/1
  # GET /lab_tuberculoses/1.json
  def show
  end

  # GET /lab_tuberculoses/new
  def new
    @lab_tuberculose = LabTuberculosis.new
  end

  # GET /lab_tuberculoses/1/edit
  def edit
  end

  # POST /lab_tuberculoses
  # POST /lab_tuberculoses.json
  def create
    @lab_tuberculose = LabTuberculosis.new(lab_tuberculose_params)

    respond_to do |format|
      if @lab_tuberculose.save
        format.html { redirect_to @lab_tuberculose, notice: 'Lab tuberculosis was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lab_tuberculose }
      else
        format.html { render action: 'new' }
        format.json { render json: @lab_tuberculose.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_tuberculoses/1
  # PATCH/PUT /lab_tuberculoses/1.json
  def update
    respond_to do |format|
      if @lab_tuberculose.update(lab_tuberculose_params)
        format.html { redirect_to @lab_tuberculose, notice: 'Lab tuberculosis was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lab_tuberculose.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_tuberculoses/1
  # DELETE /lab_tuberculoses/1.json
  def destroy
    @lab_tuberculose.destroy
    respond_to do |format|
      format.html { redirect_to lab_tuberculoses_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_tuberculose
      @lab_tuberculose = LabTuberculosis.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_tuberculose_params
      params.require(:lab_tuberculose).permit(:paciente_id, :usuario_id, :fecha_toma_muestra_tuberculosis, :fecha_entrega, :hospital_id)
    end
end

class LabAnatPatsController < ApplicationController
  before_action :set_lab_anat_pat, only: [:show, :edit, :update, :destroy]

  # GET /lab_anat_pats
  # GET /lab_anat_pats.json
  def index
    @lab_anat_pats = LabAnatPat.all
  end

  # GET /lab_anat_pats/1
  # GET /lab_anat_pats/1.json
  def show
  end

  # GET /lab_anat_pats/new
  def new
    @lab_anat_pat = LabAnatPat.new
  end

  # GET /lab_anat_pats/1/edit
  def edit
  end

  # POST /lab_anat_pats
  # POST /lab_anat_pats.json
  def create
    @lab_anat_pat = LabAnatPat.new(lab_anat_pat_params)

    respond_to do |format|
      if @lab_anat_pat.save
        format.html { redirect_to @lab_anat_pat, notice: 'Lab anat pat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lab_anat_pat }
      else
        format.html { render action: 'new' }
        format.json { render json: @lab_anat_pat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_anat_pats/1
  # PATCH/PUT /lab_anat_pats/1.json
  def update
    respond_to do |format|
      if @lab_anat_pat.update(lab_anat_pat_params)
        format.html { redirect_to @lab_anat_pat, notice: 'Lab anat pat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lab_anat_pat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_anat_pats/1
  # DELETE /lab_anat_pats/1.json
  def destroy
    @lab_anat_pat.destroy
    respond_to do |format|
      format.html { redirect_to lab_anat_pats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_anat_pat
      @lab_anat_pat = LabAnatPat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_anat_pat_params
      params.require(:lab_anat_pat).permit(:paciente_id, :usuario_id, :fecha_toma_muestra_pat, :servicio, :cama, :diagnostico_clinico, :datos_anatomicos, :lugar_muestra, :diagnostico_operatorio, :pieza_quirurgica, :biopsia, :otros, :conservante, :fecha_entrega, :hospital_id)
    end
end

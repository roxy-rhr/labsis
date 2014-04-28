class LabAnatCitsController < ApplicationController
  before_action :set_lab_anat_cit, only: [:show, :edit, :update, :destroy]

  # GET /lab_anat_cits
  # GET /lab_anat_cits.json
  def index
    @lab_anat_cits = LabAnatCit.all
  end

  # GET /lab_anat_cits/1
  # GET /lab_anat_cits/1.json
  def show
  end

  # GET /lab_anat_cits/new
  def new
    @lab_anat_cit = LabAnatCit.new
  end

  # GET /lab_anat_cits/1/edit
  def edit
  end

  # POST /lab_anat_cits
  # POST /lab_anat_cits.json
  def create
    @lab_anat_cit = LabAnatCit.new(lab_anat_cit_params)

    respond_to do |format|
      if @lab_anat_cit.save
        format.html { redirect_to @lab_anat_cit, notice: 'Lab anat cit was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lab_anat_cit }
      else
        format.html { render action: 'new' }
        format.json { render json: @lab_anat_cit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_anat_cits/1
  # PATCH/PUT /lab_anat_cits/1.json
  def update
    respond_to do |format|
      if @lab_anat_cit.update(lab_anat_cit_params)
        format.html { redirect_to @lab_anat_cit, notice: 'Lab anat cit was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lab_anat_cit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_anat_cits/1
  # DELETE /lab_anat_cits/1.json
  def destroy
    @lab_anat_cit.destroy
    respond_to do |format|
      format.html { redirect_to lab_anat_cits_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_anat_cit
      @lab_anat_cit = LabAnatCit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_anat_cit_params
      params.require(:lab_anat_cit).permit(:paciente_id, :usuario_id, :fecha_toma_muestra_cit, :fecha_ult_menstruacion, :fecha_ult_parto, :fecha_aborto, :nivel_social, :n_emabarazos, :nro, :sin_tratamiento, :n_abortos, :ritmo, :dia_termo, :n_cesareas, :estado_lactancia, :menopausia, :embarazo, :ligadura_trompas, :oral, :depo, :otros, :criocirug_hormonal, :aspecto_cuello, :flujo_vaginal, :lugar_de_muestra, :informacion_toma_muestra, :control, :fecha_entrega, :hospital_id)
    end
end

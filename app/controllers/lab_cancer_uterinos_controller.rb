class LabCancerUterinosController < ApplicationController
  before_action :set_lab_cancer_uterino, only: [:show, :edit, :update, :destroy]

  # GET /lab_cancer_uterinos
  # GET /lab_cancer_uterinos.json
  def index
    @lab_cancer_uterinos = LabCancerUterino.all
  end

  # GET /lab_cancer_uterinos/1
  # GET /lab_cancer_uterinos/1.json
  def show
  end

  # GET /lab_cancer_uterinos/new
  def new
    @lab_cancer_uterino = LabCancerUterino.new
  end

  # GET /lab_cancer_uterinos/1/edit
  def edit
  end

  # POST /lab_cancer_uterinos
  # POST /lab_cancer_uterinos.json
  def create
    @lab_cancer_uterino = LabCancerUterino.new(lab_cancer_uterino_params)

    respond_to do |format|
      if @lab_cancer_uterino.save
        format.html { redirect_to @lab_cancer_uterino, notice: 'Lab cancer uterino was successfully created.' }
        format.json { render action: 'show', status: :created, location: @lab_cancer_uterino }
      else
        format.html { render action: 'new' }
        format.json { render json: @lab_cancer_uterino.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lab_cancer_uterinos/1
  # PATCH/PUT /lab_cancer_uterinos/1.json
  def update
    respond_to do |format|
      if @lab_cancer_uterino.update(lab_cancer_uterino_params)
        format.html { redirect_to @lab_cancer_uterino, notice: 'Lab cancer uterino was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @lab_cancer_uterino.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_cancer_uterinos/1
  # DELETE /lab_cancer_uterinos/1.json
  def destroy
    @lab_cancer_uterino.destroy
    respond_to do |format|
      format.html { redirect_to lab_cancer_uterinos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_lab_cancer_uterino
      @lab_cancer_uterino = LabCancerUterino.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def lab_cancer_uterino_params
      params.require(:lab_cancer_uterino).permit(:paciente_id, :usuario_id, :fecha_toma_muestra_cancer_uterino, :fecha_entrega, :hospital_id)
    end
end

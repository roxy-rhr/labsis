class InsumosReactivosController < ApplicationController
  before_action :set_insumos_reactivo, only: [:show, :edit, :update, :destroy]

  # GET /insumos_reactivos
  # GET /insumos_reactivos.json
  def index
    if  session[rol] == admin
      @insumos_reactivos = InsumosReactivo.all
    elsif session[rol] == empleado
    @insumos_reactivos = InsumosReactivo.where(:lab => cielto)

    end
  end

  # GET /insumos_reactivos/1
  # GET /insumos_reactivos/1.json
  def show
  end

  # GET /insumos_reactivos/new
  def new
    @insumos_reactivo = InsumosReactivo.new
  end

  # GET /insumos_reactivos/1/edit
  def edit
  end

  # POST /insumos_reactivos
  # POST /insumos_reactivos.json
  def create
    @insumos_reactivo = InsumosReactivo.new(insumos_reactivo_params)

    respond_to do |format|
      if @insumos_reactivo.save
        format.html { redirect_to @insumos_reactivo, notice: 'Insumos reactivo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @insumos_reactivo }
      else
        format.html { render action: 'new' }
        format.json { render json: @insumos_reactivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /insumos_reactivos/1
  # PATCH/PUT /insumos_reactivos/1.json
  def update
    respond_to do |format|
      if @insumos_reactivo.update(insumos_reactivo_params)
        format.html { redirect_to @insumos_reactivo, notice: 'Insumos reactivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @insumos_reactivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /insumos_reactivos/1
  # DELETE /insumos_reactivos/1.json
  def destroy
    @insumos_reactivo.destroy
    respond_to do |format|
      format.html { redirect_to insumos_reactivos_url }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_insumos_reactivo
    @insumos_reactivo = InsumosReactivo.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def insumos_reactivo_params
    params.require(:insumos_reactivo).permit(:nombre, :codigo, :stock, :nombre_lab, :detalle, :tipo, :hospital_id)
  end
end

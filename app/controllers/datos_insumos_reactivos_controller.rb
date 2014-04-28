class DatosInsumosReactivosController < ApplicationController
  before_action :set_datos_insumos_reactivo, only: [:show, :edit, :update, :destroy]

  # GET /datos_insumos_reactivos
  # GET /datos_insumos_reactivos.json
  def index
    @datos_insumos_reactivos = DatosInsumosReactivo.all
  end

  # GET /datos_insumos_reactivos/1
  # GET /datos_insumos_reactivos/1.json
  def show
  end

  # GET /datos_insumos_reactivos/new
  def new
    @datos_insumos_reactivo = DatosInsumosReactivo.new
  end

  # GET /datos_insumos_reactivos/1/edit
  def edit
  end

  # POST /datos_insumos_reactivos
  # POST /datos_insumos_reactivos.json
  def create
    @datos_insumos_reactivo = DatosInsumosReactivo.new(datos_insumos_reactivo_params)

    respond_to do |format|
      if @datos_insumos_reactivo.save
        format.html { redirect_to @datos_insumos_reactivo, notice: 'Datos insumos reactivo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @datos_insumos_reactivo }
      else
        format.html { render action: 'new' }
        format.json { render json: @datos_insumos_reactivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /datos_insumos_reactivos/1
  # PATCH/PUT /datos_insumos_reactivos/1.json
  def update
    respond_to do |format|
      if @datos_insumos_reactivo.update(datos_insumos_reactivo_params)
        format.html { redirect_to @datos_insumos_reactivo, notice: 'Datos insumos reactivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @datos_insumos_reactivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /datos_insumos_reactivos/1
  # DELETE /datos_insumos_reactivos/1.json
  def destroy
    @datos_insumos_reactivo.destroy
    respond_to do |format|
      format.html { redirect_to datos_insumos_reactivos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_datos_insumos_reactivo
      @datos_insumos_reactivo = DatosInsumosReactivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def datos_insumos_reactivo_params
      params.require(:datos_insumos_reactivo).permit(:usuario_id, :codigo, :stock, :fecha_registro, :hospital_id)
    end
end

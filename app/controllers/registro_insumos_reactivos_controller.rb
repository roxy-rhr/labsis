class RegistroInsumosReactivosController < ApplicationController
  before_action :set_registro_insumos_reactivo, only: [:show, :edit, :update, :destroy]

  # GET /registro_insumos_reactivos
  # GET /registro_insumos_reactivos.json
  def index
    @registro_insumos_reactivos = RegistroInsumosReactivo.all
  end

  # GET /registro_insumos_reactivos/1
  # GET /registro_insumos_reactivos/1.json
  def show
  end

  # GET /registro_insumos_reactivos/new
  def new
    @registro_insumos_reactivo = RegistroInsumosReactivo.new
  end

  # GET /registro_insumos_reactivos/1/edit
  def edit
  end

  # POST /registro_insumos_reactivos
  # POST /registro_insumos_reactivos.json
  def create
    @registro_insumos_reactivo = RegistroInsumosReactivo.new(registro_insumos_reactivo_params)

    respond_to do |format|
      if @registro_insumos_reactivo.save
        format.html { redirect_to @registro_insumos_reactivo, notice: 'Registro insumos reactivo was successfully created.' }
        format.json { render action: 'show', status: :created, location: @registro_insumos_reactivo }
      else
        format.html { render action: 'new' }
        format.json { render json: @registro_insumos_reactivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /registro_insumos_reactivos/1
  # PATCH/PUT /registro_insumos_reactivos/1.json
  def update
    respond_to do |format|
      if @registro_insumos_reactivo.update(registro_insumos_reactivo_params)
        format.html { redirect_to @registro_insumos_reactivo, notice: 'Registro insumos reactivo was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @registro_insumos_reactivo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /registro_insumos_reactivos/1
  # DELETE /registro_insumos_reactivos/1.json
  def destroy
    @registro_insumos_reactivo.destroy
    respond_to do |format|
      format.html { redirect_to registro_insumos_reactivos_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_registro_insumos_reactivo
      @registro_insumos_reactivo = RegistroInsumosReactivo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def registro_insumos_reactivo_params
      params.require(:registro_insumos_reactivo).permit(:codigo, :nombre, :stock, :fecha_registro, :nombre_entregante, :hospital_id)
    end
end

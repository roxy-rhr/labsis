class ChagasController < ApplicationController
  before_action :set_chaga, only: [:show, :edit, :update, :destroy]

  # GET /chagas
  # GET /chagas.json
  def index
    @chagas = Chaga.all
  end

  # GET /chagas/1
  # GET /chagas/1.json
  def show
  end

  # GET /chagas/new
  def new
    @chaga = Chaga.new
  end

  # GET /chagas/1/edit
  def edit
  end

  # POST /chagas
  # POST /chagas.json
  def create
    @chaga = Chaga.new(chaga_params)

    respond_to do |format|
      if @chaga.save
        format.html { redirect_to @chaga, notice: 'Chaga was successfully created.' }
        format.json { render action: 'show', status: :created, location: @chaga }
      else
        format.html { render action: 'new' }
        format.json { render json: @chaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /chagas/1
  # PATCH/PUT /chagas/1.json
  def update
    respond_to do |format|
      if @chaga.update(chaga_params)
        format.html { redirect_to @chaga, notice: 'Chaga was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @chaga.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /chagas/1
  # DELETE /chagas/1.json
  def destroy
    @chaga.destroy
    respond_to do |format|
      format.html { redirect_to chagas_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_chaga
      @chaga = Chaga.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chaga_params
      params.require(:chaga).permit(:paciente_id, :usuario_id, :fecha_toma_muestra_chagas, :fecha_entrega, :hospital_id)
    end
end

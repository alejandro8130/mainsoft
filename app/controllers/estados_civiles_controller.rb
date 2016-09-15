class EstadosCivilesController < ApplicationController
  before_action :set_estados_civil, only: [:show, :edit, :update, :destroy]

  # GET /estados_civiles
  # GET /estados_civiles.json
  def index
    @estados_civiles = EstadosCivil.search(params[:search], params[:page])
  end

  # GET /estados_civiles/1
  # GET /estados_civiles/1.json
  def show
  end

  # GET /estados_civiles/new
  def new
    @estados_civil = EstadosCivil.new
  end

  # GET /estados_civiles/1/edit
  def edit
  end

  # POST /estados_civiles
  # POST /estados_civiles.json
  def create
    @estados_civil = EstadosCivil.new(estados_civil_params)

    respond_to do |format|
      if @estados_civil.save
        format.html { redirect_to @estados_civil, notice: 'El Estado Civil se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @estados_civil }
      else
        format.html { render :new }
        format.json { render json: @estados_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estados_civiles/1
  # PATCH/PUT /estados_civiles/1.json
  def update
    respond_to do |format|
      if @estados_civil.update(estados_civil_params)
        format.html { redirect_to @estados_civil, notice: 'El Estado Civil se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @estados_civil }
      else
        format.html { render :edit }
        format.json { render json: @estados_civil.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estados_civiles/1
  # DELETE /estados_civiles/1.json
  def destroy
    @estados_civil.destroy
    respond_to do |format|
      format.html { redirect_to estados_civiles_url, notice: 'El Estado Civil se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estados_civil
      @estados_civil = EstadosCivil.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estados_civil_params
      params.require(:estados_civil).permit(:nombre)
    end
end

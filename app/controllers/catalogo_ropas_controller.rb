class CatalogoRopasController < ApplicationController
  before_action :set_catalogo_ropa, only: [:show, :edit, :update, :destroy]

  # GET /catalogo_ropas
  # GET /catalogo_ropas.json
  def index
    @catalogo_ropas = CatalogoRopa.search(params[:search], params[:page])
  end

  # GET /catalogo_ropas/1
  # GET /catalogo_ropas/1.json
  def show
  end

  # GET /catalogo_ropas/new
  def new
    @catalogo_ropa = CatalogoRopa.new
  end

  # GET /catalogo_ropas/1/edit
  def edit
  end

  # POST /catalogo_ropas
  # POST /catalogo_ropas.json
  def create
    @catalogo_ropa = CatalogoRopa.new(catalogo_ropa_params)

    respond_to do |format|
      if @catalogo_ropa.save
        format.html { redirect_to @catalogo_ropa, notice: 'Producto en catalogo creado correctamente.' }
        format.json { render :show, status: :created, location: @catalogo_ropa }
      else
        format.html { render :new }
        format.json { render json: @catalogo_ropa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogo_ropas/1
  # PATCH/PUT /catalogo_ropas/1.json
  def update
    respond_to do |format|
      if @catalogo_ropa.update(catalogo_ropa_params)
        format.html { redirect_to @catalogo_ropa, notice: 'Producto en catalogo actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @catalogo_ropa }
      else
        format.html { render :edit }
        format.json { render json: @catalogo_ropa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogo_ropas/1
  # DELETE /catalogo_ropas/1.json
  def destroy
    @catalogo_ropa.destroy
    respond_to do |format|
      format.html { redirect_to catalogo_ropas_url, notice: 'Producto en catalogo eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogo_ropa
      @catalogo_ropa = CatalogoRopa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogo_ropa_params
      params.require(:catalogo_ropa).permit(:nombre, :valor, :photo)
    end
end

class VentasController < ApplicationController
  before_action :set_venta, only: [:show, :edit, :update, :destroy]

  # GET /ventas
  # GET /ventas.json
  def index
    @ventas = Venta.search(params[:search], params[:page])
  end

  # GET /ventas/1
  # GET /ventas/1.json
  def show
  end

  # GET /ventas/new
  def new
    @venta = Venta.new
    @venta.detalles.build
  end

  # GET /ventas/1/edit
  def edit
  end

  # POST /ventas
  # POST /ventas.json
  def create
    @venta = Venta.new(venta_params)

    respond_to do |format|
      if @venta.save
        format.html { redirect_to @venta, notice: 'La Venta se ha registrado correctamente.' }
        format.json { render :show, status: :created, location: @venta }
      else
        format.html { render :new }
        format.json { render json: @venta.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ventas/1
  # PATCH/PUT /ventas/1.json
  def update
    respond_to do |format|
      if @venta.update(venta_params)
        format.html { redirect_to @venta, notice: 'La Venta se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @venta }
      else
        format.html { render :edit }
        format.json { render json: @venta.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ventas/1
  # DELETE /ventas/1.json
  def destroy
    @venta.destroy
    respond_to do |format|
      format.html { redirect_to ventas_url, notice: 'La Venta se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_venta
      @venta = Venta.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def venta_params
      params.require(:venta).permit(:fecha, :hora, :total, :tipos_pago_id, :empleado_id, :cliente_id,
                	detalles_attributes: [:id, :producto_id ,:cantidad_producto, :valor, :venta_id, :_destroy])
    end
end
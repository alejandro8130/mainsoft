class TiposPagosController < ApplicationController
  before_action :set_tipos_pago, only: [:show, :edit, :update, :destroy]

  # GET /tipos_pagos
  # GET /tipos_pagos.json
  def index
    @tipos_pagos = TiposPago.search(params[:search], params[:page])
  end

  # GET /tipos_pagos/1
  # GET /tipos_pagos/1.json
  def show
  end

  # GET /tipos_pagos/new
  def new
    @tipos_pago = TiposPago.new
  end

  # GET /tipos_pagos/1/edit
  def edit
  end

  # POST /tipos_pagos
  # POST /tipos_pagos.json
  def create
    @tipos_pago = TiposPago.new(tipos_pago_params)

    respond_to do |format|
      if @tipos_pago.save
        format.html { redirect_to @tipos_pago, notice: 'El Tipo de Pago se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @tipos_pago }
      else
        format.html { render :new }
        format.json { render json: @tipos_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipos_pagos/1
  # PATCH/PUT /tipos_pagos/1.json
  def update
    respond_to do |format|
      if @tipos_pago.update(tipos_pago_params)
        format.html { redirect_to @tipos_pago, notice: 'El Tipo de Pago se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @tipos_pago }
      else
        format.html { render :edit }
        format.json { render json: @tipos_pago.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipos_pagos/1
  # DELETE /tipos_pagos/1.json
  def destroy
    @tipos_pago.destroy
    respond_to do |format|
      format.html { redirect_to tipos_pagos_url, notice: 'El Tipo de Pago se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipos_pago
      @tipos_pago = TiposPago.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipos_pago_params
      params.require(:tipos_pago).permit(:nombre)
    end
end

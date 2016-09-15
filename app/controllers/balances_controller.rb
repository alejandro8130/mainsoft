class BalancesController < ApplicationController
  before_action :set_balanc, only: [:show, :edit, :update, :destroy]

  # GET /balances
  # GET /balances.json
  def index
    @balances = Balance.search(params[:search], params[:page])
  end

  # GET /balances/1
  # GET /balances/1.json
  def show
  end

  # GET /balances/new
  def new
    @balance = Balance.new
  end

  # GET /balances/1/edit
  def edit
  end

  # POST /balances
  # POST /balances.json
  def create
    @balance = Balance.new(balanc_params)

    respond_to do |format|
      if @balance.save
        format.html { redirect_to @balance, notice: 'El Balance se ha creado correctamente.' }
        format.json { render :show, status: :created, location: @balance }
      else
        format.html { render :new }
        format.json { render json: @balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /balances/1
  # PATCH/PUT /balances/1.json
  def update
    respond_to do |format|
      if @balance.update(balanc_params)
        format.html { redirect_to @balance, notice: 'El Balance se ha actualizado correctamente.' }
        format.json { render :show, status: :ok, location: @balance }
      else
        format.html { render :edit }
        format.json { render json: @balance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /balances/1
  # DELETE /balances/1.json
  def destroy
    @balance.destroy
    respond_to do |format|
      format.html { redirect_to balances_url, notice: 'El Balance se ha eliminado correctamente.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_balanc
      @balance = Balance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def balanc_params
      params.require(:balance).permit(:saldo_anterior, :entradas, :salidas, :saldo_actual, :caja_nro, :empleado_id)
    end
end

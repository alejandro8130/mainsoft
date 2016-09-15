require 'test_helper'

class BalancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @balanc = balances(:one)
  end

  test "should get index" do
    get balances_url
    assert_response :success
  end

  test "should get new" do
    get new_balanc_url
    assert_response :success
  end

  test "should create balanc" do
    assert_difference('Balance.count') do
      post balances_url, params: { balanc: { caja_nro: @balanc.caja_nro, empleado_id: @balanc.empleado_id, entradas: @balanc.entradas, saldo_actual: @balanc.saldo_actual, saldo_anterior: @balanc.saldo_anterior, salidas: @balanc.salidas } }
    end

    assert_redirected_to balanc_url(Balance.last)
  end

  test "should show balanc" do
    get balanc_url(@balanc)
    assert_response :success
  end

  test "should get edit" do
    get edit_balanc_url(@balanc)
    assert_response :success
  end

  test "should update balanc" do
    patch balanc_url(@balanc), params: { balanc: { caja_nro: @balanc.caja_nro, empleado_id: @balanc.empleado_id, entradas: @balanc.entradas, saldo_actual: @balanc.saldo_actual, saldo_anterior: @balanc.saldo_anterior, salidas: @balanc.salidas } }
    assert_redirected_to balanc_url(@balanc)
  end

  test "should destroy balanc" do
    assert_difference('Balance.count', -1) do
      delete balanc_url(@balanc)
    end

    assert_redirected_to balances_url
  end
end

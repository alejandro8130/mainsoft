require 'test_helper'

class TiposPagosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_pago = tipos_pagos(:one)
  end

  test "should get index" do
    get tipos_pagos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_pago_url
    assert_response :success
  end

  test "should create tipos_pago" do
    assert_difference('TiposPago.count') do
      post tipos_pagos_url, params: { tipos_pago: { nombre: @tipos_pago.nombre } }
    end

    assert_redirected_to tipos_pago_url(TiposPago.last)
  end

  test "should show tipos_pago" do
    get tipos_pago_url(@tipos_pago)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_pago_url(@tipos_pago)
    assert_response :success
  end

  test "should update tipos_pago" do
    patch tipos_pago_url(@tipos_pago), params: { tipos_pago: { nombre: @tipos_pago.nombre } }
    assert_redirected_to tipos_pago_url(@tipos_pago)
  end

  test "should destroy tipos_pago" do
    assert_difference('TiposPago.count', -1) do
      delete tipos_pago_url(@tipos_pago)
    end

    assert_redirected_to tipos_pagos_url
  end
end

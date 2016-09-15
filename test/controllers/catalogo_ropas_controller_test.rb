require 'test_helper'

class CatalogoRopasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @catalogo_ropa = catalogo_ropas(:one)
  end

  test "should get index" do
    get catalogo_ropas_url
    assert_response :success
  end

  test "should get new" do
    get new_catalogo_ropa_url
    assert_response :success
  end

  test "should create catalogo_ropa" do
    assert_difference('CatalogoRopa.count') do
      post catalogo_ropas_url, params: { catalogo_ropa: { nombre: @catalogo_ropa.nombre, valor: @catalogo_ropa.valor } }
    end

    assert_redirected_to catalogo_ropa_url(CatalogoRopa.last)
  end

  test "should show catalogo_ropa" do
    get catalogo_ropa_url(@catalogo_ropa)
    assert_response :success
  end

  test "should get edit" do
    get edit_catalogo_ropa_url(@catalogo_ropa)
    assert_response :success
  end

  test "should update catalogo_ropa" do
    patch catalogo_ropa_url(@catalogo_ropa), params: { catalogo_ropa: { nombre: @catalogo_ropa.nombre, valor: @catalogo_ropa.valor } }
    assert_redirected_to catalogo_ropa_url(@catalogo_ropa)
  end

  test "should destroy catalogo_ropa" do
    assert_difference('CatalogoRopa.count', -1) do
      delete catalogo_ropa_url(@catalogo_ropa)
    end

    assert_redirected_to catalogo_ropas_url
  end
end

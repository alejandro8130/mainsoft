require 'test_helper'

class EstadosCivilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estados_civil = estados_civiles(:one)
  end

  test "should get index" do
    get estados_civiles_url
    assert_response :success
  end

  test "should get new" do
    get new_estados_civil_url
    assert_response :success
  end

  test "should create estados_civil" do
    assert_difference('EstadosCivil.count') do
      post estados_civiles_url, params: { estados_civil: { nombre: @estados_civil.nombre } }
    end

    assert_redirected_to estados_civil_url(EstadosCivil.last)
  end

  test "should show estados_civil" do
    get estados_civil_url(@estados_civil)
    assert_response :success
  end

  test "should get edit" do
    get edit_estados_civil_url(@estados_civil)
    assert_response :success
  end

  test "should update estados_civil" do
    patch estados_civil_url(@estados_civil), params: { estados_civil: { nombre: @estados_civil.nombre } }
    assert_redirected_to estados_civil_url(@estados_civil)
  end

  test "should destroy estados_civil" do
    assert_difference('EstadosCivil.count', -1) do
      delete estados_civil_url(@estados_civil)
    end

    assert_redirected_to estados_civiles_url
  end
end

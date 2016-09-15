require 'test_helper'

class ClientesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client = clientes(:one)
  end

  test "should get index" do
    get clientes_url
    assert_response :success
  end

  test "should get new" do
    get new_client_url
    assert_response :success
  end

  test "should create client" do
    assert_difference('Cliente.count') do
      post clientes_url, params: { client: { apellido: @client.apellido, celular: @client.celular, ciudad_id: @client.ciudad_id, direccion: @client.direccion, email: @client.email, fecha_nacimiento: @client.fecha_nacimiento, genero: @client.genero, nombre: @client.nombre, nro_documento: @client.nro_documento, telefono: @client.telefono, tipos_documento_id: @client.tipos_documento_id } }
    end

    assert_redirected_to client_url(Cliente.last)
  end

  test "should show client" do
    get client_url(@client)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_url(@client)
    assert_response :success
  end

  test "should update client" do
    patch client_url(@client), params: { client: { apellido: @client.apellido, celular: @client.celular, ciudad_id: @client.ciudad_id, direccion: @client.direccion, email: @client.email, fecha_nacimiento: @client.fecha_nacimiento, genero: @client.genero, nombre: @client.nombre, nro_documento: @client.nro_documento, telefono: @client.telefono, tipos_documento_id: @client.tipos_documento_id } }
    assert_redirected_to client_url(@client)
  end

  test "should destroy client" do
    assert_difference('Cliente.count', -1) do
      delete client_url(@client)
    end

    assert_redirected_to clientes_url
  end
end

require 'test_helper'

class EmpleadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @empleado = empleados(:one)
  end

  test "should get index" do
    get empleados_url
    assert_response :success
  end

  test "should get new" do
    get new_empleado_url
    assert_response :success
  end

  test "should create empleado" do
    assert_difference('Empleado.count') do
      post empleados_url, params: { empleado: { apellido: @empleado.apellido, cargo_id: @empleado.cargo_id, celular: @empleado.celular, ciudad_id: @empleado.ciudad_id, direccion: @empleado.direccion, email: @empleado.email, estados_civil_id: @empleado.estados_civil_id, factor_rh: @empleado.factor_rh, fecha_nacimiento: @empleado.fecha_nacimiento, fin_contrato: @empleado.fin_contrato, genero: @empleado.genero, hora_entrada: @empleado.hora_entrada, hora_salida: @empleado.hora_salida, inicio_contrato: @empleado.inicio_contrato, nombre: @empleado.nombre, nro_documento: @empleado.nro_documento, telefono: @empleado.telefono, tipos_documento_id: @empleado.tipos_documento_id, usuario_id: @empleado.usuario_id } }
    end

    assert_redirected_to empleado_url(Empleado.last)
  end

  test "should show empleado" do
    get empleado_url(@empleado)
    assert_response :success
  end

  test "should get edit" do
    get edit_empleado_url(@empleado)
    assert_response :success
  end

  test "should update empleado" do
    patch empleado_url(@empleado), params: { empleado: { apellido: @empleado.apellido, cargo_id: @empleado.cargo_id, celular: @empleado.celular, ciudad_id: @empleado.ciudad_id, direccion: @empleado.direccion, email: @empleado.email, estados_civil_id: @empleado.estados_civil_id, factor_rh: @empleado.factor_rh, fecha_nacimiento: @empleado.fecha_nacimiento, fin_contrato: @empleado.fin_contrato, genero: @empleado.genero, hora_entrada: @empleado.hora_entrada, hora_salida: @empleado.hora_salida, inicio_contrato: @empleado.inicio_contrato, nombre: @empleado.nombre, nro_documento: @empleado.nro_documento, telefono: @empleado.telefono, tipos_documento_id: @empleado.tipos_documento_id, usuario_id: @empleado.usuario_id } }
    assert_redirected_to empleado_url(@empleado)
  end

  test "should destroy empleado" do
    assert_difference('Empleado.count', -1) do
      delete empleado_url(@empleado)
    end

    assert_redirected_to empleados_url
  end
end

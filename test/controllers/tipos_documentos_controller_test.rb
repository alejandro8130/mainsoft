require 'test_helper'

class TiposDocumentosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipos_documento = tipos_documentos(:one)
  end

  test "should get index" do
    get tipos_documentos_url
    assert_response :success
  end

  test "should get new" do
    get new_tipos_documento_url
    assert_response :success
  end

  test "should create tipos_documento" do
    assert_difference('TiposDocumento.count') do
      post tipos_documentos_url, params: { tipos_documento: { nombre: @tipos_documento.nombre } }
    end

    assert_redirected_to tipos_documento_url(TiposDocumento.last)
  end

  test "should show tipos_documento" do
    get tipos_documento_url(@tipos_documento)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipos_documento_url(@tipos_documento)
    assert_response :success
  end

  test "should update tipos_documento" do
    patch tipos_documento_url(@tipos_documento), params: { tipos_documento: { nombre: @tipos_documento.nombre } }
    assert_redirected_to tipos_documento_url(@tipos_documento)
  end

  test "should destroy tipos_documento" do
    assert_difference('TiposDocumento.count', -1) do
      delete tipos_documento_url(@tipos_documento)
    end

    assert_redirected_to tipos_documentos_url
  end
end

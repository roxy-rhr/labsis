require 'test_helper'

class DatosInsumosReactivosControllerTest < ActionController::TestCase
  setup do
    @datos_insumos_reactivo = datos_insumos_reactivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_insumos_reactivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_insumos_reactivo" do
    assert_difference('DatosInsumosReactivo.count') do
      post :create, datos_insumos_reactivo: { codigo: @datos_insumos_reactivo.codigo, fecha_registro: @datos_insumos_reactivo.fecha_registro, hospital_id: @datos_insumos_reactivo.hospital_id, stock: @datos_insumos_reactivo.stock, usuario_id: @datos_insumos_reactivo.usuario_id }
    end

    assert_redirected_to datos_insumos_reactivo_path(assigns(:datos_insumos_reactivo))
  end

  test "should show datos_insumos_reactivo" do
    get :show, id: @datos_insumos_reactivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_insumos_reactivo
    assert_response :success
  end

  test "should update datos_insumos_reactivo" do
    patch :update, id: @datos_insumos_reactivo, datos_insumos_reactivo: { codigo: @datos_insumos_reactivo.codigo, fecha_registro: @datos_insumos_reactivo.fecha_registro, hospital_id: @datos_insumos_reactivo.hospital_id, stock: @datos_insumos_reactivo.stock, usuario_id: @datos_insumos_reactivo.usuario_id }
    assert_redirected_to datos_insumos_reactivo_path(assigns(:datos_insumos_reactivo))
  end

  test "should destroy datos_insumos_reactivo" do
    assert_difference('DatosInsumosReactivo.count', -1) do
      delete :destroy, id: @datos_insumos_reactivo
    end

    assert_redirected_to datos_insumos_reactivos_path
  end
end

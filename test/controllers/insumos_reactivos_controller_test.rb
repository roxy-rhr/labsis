require 'test_helper'

class InsumosReactivosControllerTest < ActionController::TestCase
  setup do
    @insumos_reactivo = insumos_reactivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insumos_reactivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insumos_reactivo" do
    assert_difference('InsumosReactivo.count') do
      post :create, insumos_reactivo: { codigo: @insumos_reactivo.codigo, detalle: @insumos_reactivo.detalle, hospital_id: @insumos_reactivo.hospital_id, nombre: @insumos_reactivo.nombre, nombre_lab: @insumos_reactivo.nombre_lab, stock: @insumos_reactivo.stock, tipo: @insumos_reactivo.tipo }
    end

    assert_redirected_to insumos_reactivo_path(assigns(:insumos_reactivo))
  end

  test "should show insumos_reactivo" do
    get :show, id: @insumos_reactivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insumos_reactivo
    assert_response :success
  end

  test "should update insumos_reactivo" do
    patch :update, id: @insumos_reactivo, insumos_reactivo: { codigo: @insumos_reactivo.codigo, detalle: @insumos_reactivo.detalle, hospital_id: @insumos_reactivo.hospital_id, nombre: @insumos_reactivo.nombre, nombre_lab: @insumos_reactivo.nombre_lab, stock: @insumos_reactivo.stock, tipo: @insumos_reactivo.tipo }
    assert_redirected_to insumos_reactivo_path(assigns(:insumos_reactivo))
  end

  test "should destroy insumos_reactivo" do
    assert_difference('InsumosReactivo.count', -1) do
      delete :destroy, id: @insumos_reactivo
    end

    assert_redirected_to insumos_reactivos_path
  end
end

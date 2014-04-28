require 'test_helper'

class RegistroInsumosReactivosControllerTest < ActionController::TestCase
  setup do
    @registro_insumos_reactivo = registro_insumos_reactivos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:registro_insumos_reactivos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create registro_insumos_reactivo" do
    assert_difference('RegistroInsumosReactivo.count') do
      post :create, registro_insumos_reactivo: { codigo: @registro_insumos_reactivo.codigo, fecha_registro: @registro_insumos_reactivo.fecha_registro, hospital_id: @registro_insumos_reactivo.hospital_id, nombre: @registro_insumos_reactivo.nombre, nombre_entregante: @registro_insumos_reactivo.nombre_entregante, stock: @registro_insumos_reactivo.stock }
    end

    assert_redirected_to registro_insumos_reactivo_path(assigns(:registro_insumos_reactivo))
  end

  test "should show registro_insumos_reactivo" do
    get :show, id: @registro_insumos_reactivo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @registro_insumos_reactivo
    assert_response :success
  end

  test "should update registro_insumos_reactivo" do
    patch :update, id: @registro_insumos_reactivo, registro_insumos_reactivo: { codigo: @registro_insumos_reactivo.codigo, fecha_registro: @registro_insumos_reactivo.fecha_registro, hospital_id: @registro_insumos_reactivo.hospital_id, nombre: @registro_insumos_reactivo.nombre, nombre_entregante: @registro_insumos_reactivo.nombre_entregante, stock: @registro_insumos_reactivo.stock }
    assert_redirected_to registro_insumos_reactivo_path(assigns(:registro_insumos_reactivo))
  end

  test "should destroy registro_insumos_reactivo" do
    assert_difference('RegistroInsumosReactivo.count', -1) do
      delete :destroy, id: @registro_insumos_reactivo
    end

    assert_redirected_to registro_insumos_reactivos_path
  end
end

require 'test_helper'

class ChagasControllerTest < ActionController::TestCase
  setup do
    @chaga = chagas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:chagas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create chaga" do
    assert_difference('Chaga.count') do
      post :create, chaga: { fecha_entrega: @chaga.fecha_entrega, fecha_toma_muestra_chagas: @chaga.fecha_toma_muestra_chagas, hospital_id: @chaga.hospital_id, paciente_id: @chaga.paciente_id, usuario_id: @chaga.usuario_id }
    end

    assert_redirected_to chaga_path(assigns(:chaga))
  end

  test "should show chaga" do
    get :show, id: @chaga
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @chaga
    assert_response :success
  end

  test "should update chaga" do
    patch :update, id: @chaga, chaga: { fecha_entrega: @chaga.fecha_entrega, fecha_toma_muestra_chagas: @chaga.fecha_toma_muestra_chagas, hospital_id: @chaga.hospital_id, paciente_id: @chaga.paciente_id, usuario_id: @chaga.usuario_id }
    assert_redirected_to chaga_path(assigns(:chaga))
  end

  test "should destroy chaga" do
    assert_difference('Chaga.count', -1) do
      delete :destroy, id: @chaga
    end

    assert_redirected_to chagas_path
  end
end

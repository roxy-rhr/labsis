require 'test_helper'

class MalariaControllerTest < ActionController::TestCase
  setup do
    @malarium = malaria(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:malaria)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create malarium" do
    assert_difference('Malarium.count') do
      post :create, malarium: { fecha_entrega: @malarium.fecha_entrega, fecha_toma_muestra_malaria: @malarium.fecha_toma_muestra_malaria, hospital_id: @malarium.hospital_id, paciente_id: @malarium.paciente_id, usuario_id: @malarium.usuario_id }
    end

    assert_redirected_to malarium_path(assigns(:malarium))
  end

  test "should show malarium" do
    get :show, id: @malarium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @malarium
    assert_response :success
  end

  test "should update malarium" do
    patch :update, id: @malarium, malarium: { fecha_entrega: @malarium.fecha_entrega, fecha_toma_muestra_malaria: @malarium.fecha_toma_muestra_malaria, hospital_id: @malarium.hospital_id, paciente_id: @malarium.paciente_id, usuario_id: @malarium.usuario_id }
    assert_redirected_to malarium_path(assigns(:malarium))
  end

  test "should destroy malarium" do
    assert_difference('Malarium.count', -1) do
      delete :destroy, id: @malarium
    end

    assert_redirected_to malaria_path
  end
end

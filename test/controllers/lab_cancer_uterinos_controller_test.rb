require 'test_helper'

class LabCancerUterinosControllerTest < ActionController::TestCase
  setup do
    @lab_cancer_uterino = lab_cancer_uterinos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_cancer_uterinos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_cancer_uterino" do
    assert_difference('LabCancerUterino.count') do
      post :create, lab_cancer_uterino: { fecha_entrega: @lab_cancer_uterino.fecha_entrega, fecha_toma_muestra_cancer_uterino: @lab_cancer_uterino.fecha_toma_muestra_cancer_uterino, hospital_id: @lab_cancer_uterino.hospital_id, paciente_id: @lab_cancer_uterino.paciente_id, usuario_id: @lab_cancer_uterino.usuario_id }
    end

    assert_redirected_to lab_cancer_uterino_path(assigns(:lab_cancer_uterino))
  end

  test "should show lab_cancer_uterino" do
    get :show, id: @lab_cancer_uterino
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_cancer_uterino
    assert_response :success
  end

  test "should update lab_cancer_uterino" do
    patch :update, id: @lab_cancer_uterino, lab_cancer_uterino: { fecha_entrega: @lab_cancer_uterino.fecha_entrega, fecha_toma_muestra_cancer_uterino: @lab_cancer_uterino.fecha_toma_muestra_cancer_uterino, hospital_id: @lab_cancer_uterino.hospital_id, paciente_id: @lab_cancer_uterino.paciente_id, usuario_id: @lab_cancer_uterino.usuario_id }
    assert_redirected_to lab_cancer_uterino_path(assigns(:lab_cancer_uterino))
  end

  test "should destroy lab_cancer_uterino" do
    assert_difference('LabCancerUterino.count', -1) do
      delete :destroy, id: @lab_cancer_uterino
    end

    assert_redirected_to lab_cancer_uterinos_path
  end
end

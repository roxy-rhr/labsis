require 'test_helper'

class LabTuberculosesControllerTest < ActionController::TestCase
  setup do
    @lab_tuberculose = lab_tuberculoses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_tuberculoses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_tuberculose" do
    assert_difference('LabTuberculosis.count') do
      post :create, lab_tuberculose: { fecha_entrega: @lab_tuberculose.fecha_entrega, fecha_toma_muestra_tuberculosis: @lab_tuberculose.fecha_toma_muestra_tuberculosis, hospital_id: @lab_tuberculose.hospital_id, paciente_id: @lab_tuberculose.paciente_id, usuario_id: @lab_tuberculose.usuario_id }
    end

    assert_redirected_to lab_tuberculose_path(assigns(:lab_tuberculose))
  end

  test "should show lab_tuberculose" do
    get :show, id: @lab_tuberculose
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_tuberculose
    assert_response :success
  end

  test "should update lab_tuberculose" do
    patch :update, id: @lab_tuberculose, lab_tuberculose: { fecha_entrega: @lab_tuberculose.fecha_entrega, fecha_toma_muestra_tuberculosis: @lab_tuberculose.fecha_toma_muestra_tuberculosis, hospital_id: @lab_tuberculose.hospital_id, paciente_id: @lab_tuberculose.paciente_id, usuario_id: @lab_tuberculose.usuario_id }
    assert_redirected_to lab_tuberculose_path(assigns(:lab_tuberculose))
  end

  test "should destroy lab_tuberculose" do
    assert_difference('LabTuberculosis.count', -1) do
      delete :destroy, id: @lab_tuberculose
    end

    assert_redirected_to lab_tuberculoses_path
  end
end

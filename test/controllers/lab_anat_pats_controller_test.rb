require 'test_helper'

class LabAnatPatsControllerTest < ActionController::TestCase
  setup do
    @lab_anat_pat = lab_anat_pats(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_anat_pats)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_anat_pat" do
    assert_difference('LabAnatPat.count') do
      post :create, lab_anat_pat: { biopsia: @lab_anat_pat.biopsia, cama: @lab_anat_pat.cama, conservante: @lab_anat_pat.conservante, datos_anatomicos: @lab_anat_pat.datos_anatomicos, diagnostico_clinico: @lab_anat_pat.diagnostico_clinico, diagnostico_operatorio: @lab_anat_pat.diagnostico_operatorio, fecha_entrega: @lab_anat_pat.fecha_entrega, fecha_toma_muestra_pat: @lab_anat_pat.fecha_toma_muestra_pat, hospital_id: @lab_anat_pat.hospital_id, lugar_muestra: @lab_anat_pat.lugar_muestra, otros: @lab_anat_pat.otros, paciente_id: @lab_anat_pat.paciente_id, pieza_quirurgica: @lab_anat_pat.pieza_quirurgica, servicio: @lab_anat_pat.servicio, usuario_id: @lab_anat_pat.usuario_id }
    end

    assert_redirected_to lab_anat_pat_path(assigns(:lab_anat_pat))
  end

  test "should show lab_anat_pat" do
    get :show, id: @lab_anat_pat
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_anat_pat
    assert_response :success
  end

  test "should update lab_anat_pat" do
    patch :update, id: @lab_anat_pat, lab_anat_pat: { biopsia: @lab_anat_pat.biopsia, cama: @lab_anat_pat.cama, conservante: @lab_anat_pat.conservante, datos_anatomicos: @lab_anat_pat.datos_anatomicos, diagnostico_clinico: @lab_anat_pat.diagnostico_clinico, diagnostico_operatorio: @lab_anat_pat.diagnostico_operatorio, fecha_entrega: @lab_anat_pat.fecha_entrega, fecha_toma_muestra_pat: @lab_anat_pat.fecha_toma_muestra_pat, hospital_id: @lab_anat_pat.hospital_id, lugar_muestra: @lab_anat_pat.lugar_muestra, otros: @lab_anat_pat.otros, paciente_id: @lab_anat_pat.paciente_id, pieza_quirurgica: @lab_anat_pat.pieza_quirurgica, servicio: @lab_anat_pat.servicio, usuario_id: @lab_anat_pat.usuario_id }
    assert_redirected_to lab_anat_pat_path(assigns(:lab_anat_pat))
  end

  test "should destroy lab_anat_pat" do
    assert_difference('LabAnatPat.count', -1) do
      delete :destroy, id: @lab_anat_pat
    end

    assert_redirected_to lab_anat_pats_path
  end
end

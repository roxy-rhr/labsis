require 'test_helper'

class LabAnatCitsControllerTest < ActionController::TestCase
  setup do
    @lab_anat_cit = lab_anat_cits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lab_anat_cits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lab_anat_cit" do
    assert_difference('LabAnatCit.count') do
      post :create, lab_anat_cit: { aspecto_cuello: @lab_anat_cit.aspecto_cuello, control: @lab_anat_cit.control, criocirug_hormonal: @lab_anat_cit.criocirug_hormonal, depo: @lab_anat_cit.depo, dia_termo: @lab_anat_cit.dia_termo, embarazo: @lab_anat_cit.embarazo, estado_lactancia: @lab_anat_cit.estado_lactancia, fecha_aborto: @lab_anat_cit.fecha_aborto, fecha_entrega: @lab_anat_cit.fecha_entrega, fecha_toma_muestra_cit: @lab_anat_cit.fecha_toma_muestra_cit, fecha_ult_menstruacion: @lab_anat_cit.fecha_ult_menstruacion, fecha_ult_parto: @lab_anat_cit.fecha_ult_parto, flujo_vaginal: @lab_anat_cit.flujo_vaginal, hospital_id: @lab_anat_cit.hospital_id, informacion_toma_muestra: @lab_anat_cit.informacion_toma_muestra, ligadura_trompas: @lab_anat_cit.ligadura_trompas, lugar_de_muestra: @lab_anat_cit.lugar_de_muestra, menopausia: @lab_anat_cit.menopausia, n_abortos: @lab_anat_cit.n_abortos, n_cesareas: @lab_anat_cit.n_cesareas, n_emabarazos: @lab_anat_cit.n_emabarazos, nivel_social: @lab_anat_cit.nivel_social, nro: @lab_anat_cit.nro, oral: @lab_anat_cit.oral, otros: @lab_anat_cit.otros, paciente_id: @lab_anat_cit.paciente_id, ritmo: @lab_anat_cit.ritmo, sin_tratamiento: @lab_anat_cit.sin_tratamiento, usuario_id: @lab_anat_cit.usuario_id }
    end

    assert_redirected_to lab_anat_cit_path(assigns(:lab_anat_cit))
  end

  test "should show lab_anat_cit" do
    get :show, id: @lab_anat_cit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lab_anat_cit
    assert_response :success
  end

  test "should update lab_anat_cit" do
    patch :update, id: @lab_anat_cit, lab_anat_cit: { aspecto_cuello: @lab_anat_cit.aspecto_cuello, control: @lab_anat_cit.control, criocirug_hormonal: @lab_anat_cit.criocirug_hormonal, depo: @lab_anat_cit.depo, dia_termo: @lab_anat_cit.dia_termo, embarazo: @lab_anat_cit.embarazo, estado_lactancia: @lab_anat_cit.estado_lactancia, fecha_aborto: @lab_anat_cit.fecha_aborto, fecha_entrega: @lab_anat_cit.fecha_entrega, fecha_toma_muestra_cit: @lab_anat_cit.fecha_toma_muestra_cit, fecha_ult_menstruacion: @lab_anat_cit.fecha_ult_menstruacion, fecha_ult_parto: @lab_anat_cit.fecha_ult_parto, flujo_vaginal: @lab_anat_cit.flujo_vaginal, hospital_id: @lab_anat_cit.hospital_id, informacion_toma_muestra: @lab_anat_cit.informacion_toma_muestra, ligadura_trompas: @lab_anat_cit.ligadura_trompas, lugar_de_muestra: @lab_anat_cit.lugar_de_muestra, menopausia: @lab_anat_cit.menopausia, n_abortos: @lab_anat_cit.n_abortos, n_cesareas: @lab_anat_cit.n_cesareas, n_emabarazos: @lab_anat_cit.n_emabarazos, nivel_social: @lab_anat_cit.nivel_social, nro: @lab_anat_cit.nro, oral: @lab_anat_cit.oral, otros: @lab_anat_cit.otros, paciente_id: @lab_anat_cit.paciente_id, ritmo: @lab_anat_cit.ritmo, sin_tratamiento: @lab_anat_cit.sin_tratamiento, usuario_id: @lab_anat_cit.usuario_id }
    assert_redirected_to lab_anat_cit_path(assigns(:lab_anat_cit))
  end

  test "should destroy lab_anat_cit" do
    assert_difference('LabAnatCit.count', -1) do
      delete :destroy, id: @lab_anat_cit
    end

    assert_redirected_to lab_anat_cits_path
  end
end

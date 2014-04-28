require 'test_helper'

class DatosUsuariosControllerTest < ActionController::TestCase
  setup do
    @datos_usuario = datos_usuarios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:datos_usuarios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create datos_usuario" do
    assert_difference('DatosUsuario.count') do
      post :create, datos_usuario: { apellidos: @datos_usuario.apellidos, ci: @datos_usuario.ci, direccion: @datos_usuario.direccion, nombres: @datos_usuario.nombres, telefono: @datos_usuario.telefono }
    end

    assert_redirected_to datos_usuario_path(assigns(:datos_usuario))
  end

  test "should show datos_usuario" do
    get :show, id: @datos_usuario
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @datos_usuario
    assert_response :success
  end

  test "should update datos_usuario" do
    patch :update, id: @datos_usuario, datos_usuario: { apellidos: @datos_usuario.apellidos, ci: @datos_usuario.ci, direccion: @datos_usuario.direccion, nombres: @datos_usuario.nombres, telefono: @datos_usuario.telefono }
    assert_redirected_to datos_usuario_path(assigns(:datos_usuario))
  end

  test "should destroy datos_usuario" do
    assert_difference('DatosUsuario.count', -1) do
      delete :destroy, id: @datos_usuario
    end

    assert_redirected_to datos_usuarios_path
  end
end

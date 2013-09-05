require 'test_helper'

class TipoDePatologiaControllerTest < ActionController::TestCase
  setup do
    @tipo_de_patologium = tipo_de_patologia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tipo_de_patologia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tipo_de_patologium" do
    assert_difference('TipoDePatologium.count') do
      post :create, tipo_de_patologium: { nombre: @tipo_de_patologium.nombre }
    end

    assert_redirected_to tipo_de_patologium_path(assigns(:tipo_de_patologium))
  end

  test "should show tipo_de_patologium" do
    get :show, id: @tipo_de_patologium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tipo_de_patologium
    assert_response :success
  end

  test "should update tipo_de_patologium" do
    put :update, id: @tipo_de_patologium, tipo_de_patologium: { nombre: @tipo_de_patologium.nombre }
    assert_redirected_to tipo_de_patologium_path(assigns(:tipo_de_patologium))
  end

  test "should destroy tipo_de_patologium" do
    assert_difference('TipoDePatologium.count', -1) do
      delete :destroy, id: @tipo_de_patologium
    end

    assert_redirected_to tipo_de_patologia_path
  end
end

require 'test_helper'

class SesionPatologiaControllerTest < ActionController::TestCase
  setup do
    @sesion_patologium = sesion_patologia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sesion_patologia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sesion_patologium" do
    assert_difference('SesionPatologium.count') do
      post :create, sesion_patologium: { patologia_id: @sesion_patologium.patologia_id, sesion_id: @sesion_patologium.sesion_id }
    end

    assert_redirected_to sesion_patologium_path(assigns(:sesion_patologium))
  end

  test "should show sesion_patologium" do
    get :show, id: @sesion_patologium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sesion_patologium
    assert_response :success
  end

  test "should update sesion_patologium" do
    put :update, id: @sesion_patologium, sesion_patologium: { patologia_id: @sesion_patologium.patologia_id, sesion_id: @sesion_patologium.sesion_id }
    assert_redirected_to sesion_patologium_path(assigns(:sesion_patologium))
  end

  test "should destroy sesion_patologium" do
    assert_difference('SesionPatologium.count', -1) do
      delete :destroy, id: @sesion_patologium
    end

    assert_redirected_to sesion_patologia_path
  end
end

require 'test_helper'

class PatologiaControllerTest < ActionController::TestCase
  setup do
    @patologium = patologia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:patologia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create patologium" do
    assert_difference('Patologium.count') do
      post :create, patologium: { nombre: @patologium.nombre, tipo_de_patologia_id: @patologium.tipo_de_patologia_id }
    end

    assert_redirected_to patologium_path(assigns(:patologium))
  end

  test "should show patologium" do
    get :show, id: @patologium
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @patologium
    assert_response :success
  end

  test "should update patologium" do
    put :update, id: @patologium, patologium: { nombre: @patologium.nombre, tipo_de_patologia_id: @patologium.tipo_de_patologia_id }
    assert_redirected_to patologium_path(assigns(:patologium))
  end

  test "should destroy patologium" do
    assert_difference('Patologium.count', -1) do
      delete :destroy, id: @patologium
    end

    assert_redirected_to patologia_path
  end
end

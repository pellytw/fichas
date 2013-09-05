require 'test_helper'

class PacienteTurnosControllerTest < ActionController::TestCase
  setup do
    @paciente_turno = paciente_turnos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:paciente_turnos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create paciente_turno" do
    assert_difference('PacienteTurno.count') do
      post :create, paciente_turno: { fecha_y_hora: @paciente_turno.fecha_y_hora, paciente_id: @paciente_turno.paciente_id, turno_id: @paciente_turno.turno_id }
    end

    assert_redirected_to paciente_turno_path(assigns(:paciente_turno))
  end

  test "should show paciente_turno" do
    get :show, id: @paciente_turno
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @paciente_turno
    assert_response :success
  end

  test "should update paciente_turno" do
    put :update, id: @paciente_turno, paciente_turno: { fecha_y_hora: @paciente_turno.fecha_y_hora, paciente_id: @paciente_turno.paciente_id, turno_id: @paciente_turno.turno_id }
    assert_redirected_to paciente_turno_path(assigns(:paciente_turno))
  end

  test "should destroy paciente_turno" do
    assert_difference('PacienteTurno.count', -1) do
      delete :destroy, id: @paciente_turno
    end

    assert_redirected_to paciente_turnos_path
  end
end

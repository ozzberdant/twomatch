require 'test_helper'

class InstalacionsControllerTest < ActionController::TestCase
  setup do
    @instalacion = instalacions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:instalacions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create instalacion" do
    assert_difference('Instalacion.count') do
      post :create, instalacion: { nombre: @instalacion.nombre, recinto_id: @instalacion.recinto_id }
    end

    assert_redirected_to instalacion_path(assigns(:instalacion))
  end

  test "should show instalacion" do
    get :show, id: @instalacion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @instalacion
    assert_response :success
  end

  test "should update instalacion" do
    put :update, id: @instalacion, instalacion: { nombre: @instalacion.nombre, recinto_id: @instalacion.recinto_id }
    assert_redirected_to instalacion_path(assigns(:instalacion))
  end

  test "should destroy instalacion" do
    assert_difference('Instalacion.count', -1) do
      delete :destroy, id: @instalacion
    end

    assert_redirected_to instalacions_path
  end
end

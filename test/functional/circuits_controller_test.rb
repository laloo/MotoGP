require 'test_helper'

class CircuitsControllerTest < ActionController::TestCase
  setup do
    @circuit = circuits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:circuits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create circuit" do
    assert_difference('Circuit.count') do
      post :create, circuit: @circuit.attributes
    end

    assert_redirected_to circuit_path(assigns(:circuit))
  end

  test "should show circuit" do
    get :show, id: @circuit.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @circuit.to_param
    assert_response :success
  end

  test "should update circuit" do
    put :update, id: @circuit.to_param, circuit: @circuit.attributes
    assert_redirected_to circuit_path(assigns(:circuit))
  end

  test "should destroy circuit" do
    assert_difference('Circuit.count', -1) do
      delete :destroy, id: @circuit.to_param
    end

    assert_redirected_to circuits_path
  end
end

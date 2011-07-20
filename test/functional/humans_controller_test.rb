require 'test_helper'

class HumansControllerTest < ActionController::TestCase
  setup do
    @human = humans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:humans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create human" do
    assert_difference('Human.count') do
      post :create, :human => @human.attributes
    end

    assert_redirected_to human_path(assigns(:human))
  end

  test "should show human" do
    get :show, :id => @human.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @human.to_param
    assert_response :success
  end

  test "should update human" do
    put :update, :id => @human.to_param, :human => @human.attributes
    assert_redirected_to human_path(assigns(:human))
  end

  test "should destroy human" do
    assert_difference('Human.count', -1) do
      delete :destroy, :id => @human.to_param
    end

    assert_redirected_to humans_path
  end
end

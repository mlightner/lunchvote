require 'test_helper'

class RestaurantTypesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:restaurant_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create restaurant_type" do
    assert_difference('RestaurantType.count') do
      post :create, :restaurant_type => { }
    end

    assert_redirected_to restaurant_type_path(assigns(:restaurant_type))
  end

  test "should show restaurant_type" do
    get :show, :id => restaurant_types(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => restaurant_types(:one).id
    assert_response :success
  end

  test "should update restaurant_type" do
    put :update, :id => restaurant_types(:one).id, :restaurant_type => { }
    assert_redirected_to restaurant_type_path(assigns(:restaurant_type))
  end

  test "should destroy restaurant_type" do
    assert_difference('RestaurantType.count', -1) do
      delete :destroy, :id => restaurant_types(:one).id
    end

    assert_redirected_to restaurant_types_path
  end
end

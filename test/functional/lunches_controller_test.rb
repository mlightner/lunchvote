require 'test_helper'

class LunchesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lunches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lunches" do
    assert_difference('Lunches.count') do
      post :create, :lunches => { }
    end

    assert_redirected_to lunches_path(assigns(:lunches))
  end

  test "should show lunches" do
    get :show, :id => lunches(:one).id
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => lunches(:one).id
    assert_response :success
  end

  test "should update lunches" do
    put :update, :id => lunches(:one).id, :lunches => { }
    assert_redirected_to lunches_path(assigns(:lunches))
  end

  test "should destroy lunches" do
    assert_difference('Lunches.count', -1) do
      delete :destroy, :id => lunches(:one).id
    end

    assert_redirected_to lunches_path
  end
end

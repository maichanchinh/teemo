require 'test_helper'

class TestsAssignsControllerTest < ActionController::TestCase
  setup do
    @tests_assign = tests_assigns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tests_assigns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tests_assign" do
    assert_difference('TestsAssign.count') do
      post :create, tests_assign: { test_id: @tests_assign.test_id, user_id: @tests_assign.user_id }
    end

    assert_redirected_to tests_assign_path(assigns(:tests_assign))
  end

  test "should show tests_assign" do
    get :show, id: @tests_assign
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tests_assign
    assert_response :success
  end

  test "should update tests_assign" do
    patch :update, id: @tests_assign, tests_assign: { test_id: @tests_assign.test_id, user_id: @tests_assign.user_id }
    assert_redirected_to tests_assign_path(assigns(:tests_assign))
  end

  test "should destroy tests_assign" do
    assert_difference('TestsAssign.count', -1) do
      delete :destroy, id: @tests_assign
    end

    assert_redirected_to tests_assigns_path
  end
end

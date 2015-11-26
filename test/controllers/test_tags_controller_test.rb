require 'test_helper'

class TestTagsControllerTest < ActionController::TestCase
  setup do
    @test_tag = test_tags(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:test_tags)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create test_tag" do
    assert_difference('TestTag.count') do
      post :create, test_tag: { tag_id: @test_tag.tag_id, test_id: @test_tag.test_id }
    end

    assert_redirected_to test_tag_path(assigns(:test_tag))
  end

  test "should show test_tag" do
    get :show, id: @test_tag
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @test_tag
    assert_response :success
  end

  test "should update test_tag" do
    patch :update, id: @test_tag, test_tag: { tag_id: @test_tag.tag_id, test_id: @test_tag.test_id }
    assert_redirected_to test_tag_path(assigns(:test_tag))
  end

  test "should destroy test_tag" do
    assert_difference('TestTag.count', -1) do
      delete :destroy, id: @test_tag
    end

    assert_redirected_to test_tags_path
  end
end

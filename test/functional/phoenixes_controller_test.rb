require 'test_helper'

class PhoenixesControllerTest < ActionController::TestCase
  setup do
    @phoenix = phoenixes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:phoenixes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create phoenix" do
    assert_difference('Phoenix.count') do
      post :create, phoenix: { content: @phoenix.content, fact: @phoenix.fact, image: @phoenix.image, last_seen: @phoenix.last_seen, made_by: @phoenix.made_by, no_views: @phoenix.no_views }
    end

    assert_redirected_to phoenix_path(assigns(:phoenix))
  end

  test "should show phoenix" do
    get :show, id: @phoenix
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @phoenix
    assert_response :success
  end

  test "should update phoenix" do
    put :update, id: @phoenix, phoenix: { content: @phoenix.content, fact: @phoenix.fact, image: @phoenix.image, last_seen: @phoenix.last_seen, made_by: @phoenix.made_by, no_views: @phoenix.no_views }
    assert_redirected_to phoenix_path(assigns(:phoenix))
  end

  test "should destroy phoenix" do
    assert_difference('Phoenix.count', -1) do
      delete :destroy, id: @phoenix
    end

    assert_redirected_to phoenixes_path
  end
end

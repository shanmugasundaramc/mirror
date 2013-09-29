require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get tech" do
    get :tech
    assert_response :success
  end

  test "should get news" do
    get :news
    assert_response :success
  end

  test "should get facts" do
    get :facts
    assert_response :success
  end

  test "should get fun" do
    get :fun
    assert_response :success
  end

  test "should get aboutme" do
    get :aboutme
    assert_response :success
  end

  test "should get login" do
    get :login
    assert_response :success
  end

end

require 'test_helper'

class NginxtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nginxtest = nginxtests(:one)
  end

  test "should get index" do
    get nginxtests_url
    assert_response :success
  end

  test "should get new" do
    get new_nginxtest_url
    assert_response :success
  end

  test "should create nginxtest" do
    assert_difference('Nginxtest.count') do
      post nginxtests_url, params: { nginxtest: { content: @nginxtest.content, title: @nginxtest.title } }
    end

    assert_redirected_to nginxtest_url(Nginxtest.last)
  end

  test "should show nginxtest" do
    get nginxtest_url(@nginxtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_nginxtest_url(@nginxtest)
    assert_response :success
  end

  test "should update nginxtest" do
    patch nginxtest_url(@nginxtest), params: { nginxtest: { content: @nginxtest.content, title: @nginxtest.title } }
    assert_redirected_to nginxtest_url(@nginxtest)
  end

  test "should destroy nginxtest" do
    assert_difference('Nginxtest.count', -1) do
      delete nginxtest_url(@nginxtest)
    end

    assert_redirected_to nginxtests_url
  end
end

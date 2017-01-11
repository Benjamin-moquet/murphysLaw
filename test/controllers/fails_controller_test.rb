require 'test_helper'

class FailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @fail = fails(:one)
  end

  test "should get index" do
    get fails_url
    assert_response :success
  end

  test "should get new" do
    get new_fail_url
    assert_response :success
  end

  test "should create fail" do
    assert_difference('Fail.count') do
      post fails_url, params: { fail: { title: @fail.title, url: @fail.url } }
    end

    assert_redirected_to fail_url(Fail.last)
  end

  test "should show fail" do
    get fail_url(@fail)
    assert_response :success
  end

  test "should get edit" do
    get edit_fail_url(@fail)
    assert_response :success
  end

  test "should update fail" do
    patch fail_url(@fail), params: { fail: { title: @fail.title, url: @fail.url } }
    assert_redirected_to fail_url(@fail)
  end

  test "should destroy fail" do
    assert_difference('Fail.count', -1) do
      delete fail_url(@fail)
    end

    assert_redirected_to fails_url
  end
end

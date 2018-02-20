require 'test_helper'

class CommonsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @common = commons(:one)
  end

  test "should get index" do
    get commons_url
    assert_response :success
  end

  test "should get new" do
    get new_common_url
    assert_response :success
  end

  test "should create common" do
    assert_difference('Common.count') do
      post commons_url, params: { common: {  } }
    end

    assert_redirected_to common_url(Common.last)
  end

  test "should show common" do
    get common_url(@common)
    assert_response :success
  end

  test "should get edit" do
    get edit_common_url(@common)
    assert_response :success
  end

  test "should update common" do
    patch common_url(@common), params: { common: {  } }
    assert_redirected_to common_url(@common)
  end

  test "should destroy common" do
    assert_difference('Common.count', -1) do
      delete common_url(@common)
    end

    assert_redirected_to commons_url
  end
end

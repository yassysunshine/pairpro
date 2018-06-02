require 'test_helper'

class PrepairsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @prepair = prepairs(:one)
  end

  test "should get index" do
    get prepairs_url
    assert_response :success
  end

  test "should get new" do
    get new_prepair_url
    assert_response :success
  end

  test "should create prepair" do
    assert_difference('Prepair.count') do
      post prepairs_url, params: { prepair: { content: @prepair.content, title: @prepair.title } }
    end

    assert_redirected_to prepair_url(Prepair.last)
  end

  test "should show prepair" do
    get prepair_url(@prepair)
    assert_response :success
  end

  test "should get edit" do
    get edit_prepair_url(@prepair)
    assert_response :success
  end

  test "should update prepair" do
    patch prepair_url(@prepair), params: { prepair: { content: @prepair.content, title: @prepair.title } }
    assert_redirected_to prepair_url(@prepair)
  end

  test "should destroy prepair" do
    assert_difference('Prepair.count', -1) do
      delete prepair_url(@prepair)
    end

    assert_redirected_to prepairs_url
  end
end

require "test_helper"

class MainsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mains_index_url
    assert_response :success
  end

  test "should get users" do
    get mains_users_url
    assert_response :success
  end

  test "should get admin" do
    get mains_admin_url
    assert_response :success
  end

  test "should get moderator" do
    get mains_moderator_url
    assert_response :success
  end
end

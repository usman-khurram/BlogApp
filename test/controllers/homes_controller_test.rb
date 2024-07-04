require "test_helper"

class HomesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get homes_index_url
    assert_response :success
  end

  test "should get users" do
    get homes_users_url
    assert_response :success
  end

  test "should get admin" do
    get homes_admin_url
    assert_response :success
  end

  test "should get moderator" do
    get homes_moderator_url
    assert_response :success
  end
end

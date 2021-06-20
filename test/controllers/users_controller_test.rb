require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  

  test "should get new" do
    get signup_path
    assert_response :success
  end

  

  test "should get edit" do
    # get edit_user_path
    # assert_response :success
  end

  test "should get update" do
    # patch user_path
    # assert_response :success
  end

  test "should get destroy" do
    # delete user_path
    # assert_response :success
  end

end

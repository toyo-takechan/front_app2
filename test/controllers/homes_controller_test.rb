require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get root_url
    assert_response :success
    assert_select "title", "FrontApp2"
  end

  test "should get car" do
    get homes_car_url
    assert_response :success
    assert_select "title", "FrontApp2 /car"
  end

  test "shoud get chat" do
    get homes_chat_url
    assert_response :success
    assert_select "title", "FrontApp2 /chat"
  end

  test "shoud get heart" do
    get homes_heart_url
    assert_response :success
    assert_select "title", "FrontApp2 /heart"
  end
end

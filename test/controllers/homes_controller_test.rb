require 'test_helper'

class HomesControllerTest < ActionDispatch::IntegrationTest

  test "should get index" do
    get root_path
    assert_response :success
    assert_select "title", "FrontApp2"
  end

  test "should get car" do
    get car_path
    assert_response :success
    assert_select "title", "FrontApp2 /car"
  end


  test "shoud get heart" do
    get heart_path
    assert_response :success
    assert_select "title", "FrontApp2 /heart"
  end

  test "shoud get contact" do
    get contact_path
    assert_response :success
    assert_select "title", "FrontApp2 /contact"
  end

  test "shoud get about" do
    get about_path
    assert_response :success
    assert_select "title", "FrontApp2 /about"
  end
end

require 'test_helper'

class ChatsControllerTest < ActionDispatch::IntegrationTest
  
  def setup
    @chat = chats(:orange)
  end

  test "should redirect create when not logged in" do
    assert_no_difference 'Chat.count' do
      post chats_path, params: { chat: { content: "Lorem ipusum"}}
    end
    assert_redirected_to login_url
  end

  test "should redirect destroy when not logged in" do
    assert_no_difference 'Chat.count' do
    # delete chats_path(@chat)
    end
    # assert_redirected_to login_url
  end

end

require 'test_helper'

class ChatTest < ActiveSupport::TestCase
  
  def setup
    @user = users(:michael)
    @chat = @user.chats.build(content: "吾輩は猫である", user_id: @user.id)

  end

  test "should be valid" do
    assert @chat.valid?
  end

  test "user id should be present" do
    @chat.user_id = nil
    assert_not @chat.valid?
  end

  test "content should be present" do
    @chat.content = "   "
    assert_not @chat.valid?
  end

  test "content should be at most 140 characters" do
    @chat.content ="a"*141
    assert_not @chat.valid?
  end

  test "order should be most recent firsd" do
    assert_equal chats(:most_recent), Chat.first
  end
end

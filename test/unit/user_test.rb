require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_progress
    user = create_user :accomplishments_count => 2
    assert_equal (2.0 / Post.count), user.progress
  end

  def test_incomplete
    user = create_user
    post = Post.find(42)
    user.accomplishments.create(:post => post)

    assert_equal (Post.all - [post]), user.incomplete
  end
end

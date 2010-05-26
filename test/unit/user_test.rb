require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_facebook
    user = create_user
    assert 1, user.accomplishments.count
    assert_match 'Facebook', user.accomplishments.first.title
  end

  def test_progress
    user = create_user
    user.accomplishments.create :post_number => 42
    user.accomplishments.create :post_number => 43
    assert_equal (2.0 / Post.count), user.progress
  end

  def test_incomplete
    user = create_user
    post = Post.find(42)
    user.accomplishments.create(:post => post)

    assert_equal (Post.all - [post, Post.facebook]), user.incomplete
  end
end

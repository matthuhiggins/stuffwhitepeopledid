require 'test_helper'

class AccomplishmentTest < ActiveSupport::TestCase
  def test_post
    post = Post.find(37)
    user = User.create :fb_uid => 1
    accomplishment = user.accomplishments.create :post => post

    assert_equal post, accomplishment.post
    assert_equal 37, accomplishment.post_number
    assert_equal post.number, accomplishment.number
    assert_equal post.title, accomplishment.title
    assert_equal post.url, accomplishment.url
  end
end

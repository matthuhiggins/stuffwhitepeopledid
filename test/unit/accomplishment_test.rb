require 'test_helper'

class AccomplishmentTest < ActiveSupport::TestCase
  def test_create_destroy_lifecycle
    user = create_user
    user.reload
    assert_equal 1, user.accomplishments_count
    assert_equal Post.facebook, user.latest_accomplishment
    
    accomplishment = user.accomplishments.create :post_number => 1
    user.reload
    assert_equal 2, user.accomplishments_count
    assert_equal accomplishment, user.latest_accomplishment

    accomplishment.destroy
    assert_equal 1, user.accomplishments_count
    assert_equal Post.facebook, user.latest_accomplishment.post
  end

  def test_post
    post = Post.find(37)
    user = create_user
    accomplishment = user.accomplishments.create :post => post

    assert_equal post, accomplishment.post
    assert_equal 37, accomplishment.post_number
    assert_equal post.number, accomplishment.number
    assert_equal post.title, accomplishment.title
    assert_equal post.url, accomplishment.url
  end
end

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_progress
    user = User.create :fb_uid => 1
    user.accomplishments.create :post_number => 1

    user.reload
    assert_equal (1.0 / Post.count), user.progress
  end
end

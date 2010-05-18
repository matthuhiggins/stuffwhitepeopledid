require 'test_helper'

class UserTest < ActiveSupport::TestCase
  def test_progress
    user = create_user :accomplishments_count => 2
    assert_equal (2.0 / Post.count), user.progress
  end
end

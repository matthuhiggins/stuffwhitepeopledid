require 'test_helper'

class FacebookHelperTest < ActionView::TestCase
  def test_facebook_picture
    assert_dom_equal(
      "<fb:profile-pic uid='42' linked='false'></fb:profile-pic>",
      facebook_picture(42)
    )
    assert_dom_equal(
      "<fb:profile-pic uid='42' linked='false' size='square'></fb:profile-pic>",
      facebook_picture(42, :size => 'square')
    )
  end

  def test_facebook_name
    assert_dom_equal(
      "<fb:name uid='42' linked='false'></fb:name>",
      facebook_name(42)
    )
  end
end
require 'test_helper'

class FacebookHelperTest < ActionView::TestCase
  def test_facebook_picture
    assert_dom_equal(
      image_tag('http://graph.facebook.com/42/picture'),
      facebook_picture(42)
    )
  end
end
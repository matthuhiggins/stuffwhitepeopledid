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
      "<fb:name uid='42' useyou='false' linked='false'></fb:name>",
      facebook_name(42)
    )
  end

  def test_facebook_button
    assert_dom_equal(
      "<a href='/poo' class='button yes-i-did thumbs-up' rel='nofollow' data-method='put'><span>Yes</span></a>",
      facebook_button('Yes', '/poo', :method => :put, :class => %w(yes-i-did thumbs-up))
    )
  end
end
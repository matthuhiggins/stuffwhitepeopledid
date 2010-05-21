module FacebookHelper
  def facebook_picture(uid, options = {})
    content_tag 'fb:profile-pic', '', options.reverse_merge(:uid => uid, :linked => false)
    # image_tag "http://graph.facebook.com/#{uid}/picture"
  end

  def facebook_name(uid)
    content_tag 'fb:name', '', :uid => uid, :linked => false
  end

  def facebook_button(text)
    span = content_tag :span, text, :class => 'fb_button_text'
    content_tag :a, span, :class => %w(fb_button fb_button_medium)
  end
end
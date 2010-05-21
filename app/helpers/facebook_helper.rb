module FacebookHelper
  def facebook_picture(uid, options = {})
    content_tag 'fb:profile-pic', '', options.reverse_merge(:uid => uid, :linked => false)
    # image_tag "http://graph.facebook.com/#{uid}/picture"
  end

  def facebook_name(uid)
    content_tag 'fb:name', '', :uid => uid, :linked => false
  end
end
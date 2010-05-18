module FacebookHelper
  def facebook_picture(uid)
    image_tag "http://graph.facebook.com/#{uid}/picture"
  end
end
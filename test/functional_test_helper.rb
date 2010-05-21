require 'test_helper'

module ActionController
  class TestCase
    def facebook_get(*args)
      request.cookies["fbs_#{Facebook.app_id}"] = facebook_cookie(facebook_user.fb_uid)
      get(*args)
      facebook_user.reload
    end

    def facebook_post(*args)
      request.cookies["fbs_#{Facebook.app_id}"] = facebook_cookie(facebook_user.fb_uid)
      post(*args)
      facebook_user.reload
    end

    def facebook_delete(*args)
      request.cookies["fbs_#{Facebook.app_id}"] = facebook_cookie(facebook_user.fb_uid)
      delete(*args)
      facebook_user.reload
    end

    def facebook_user
      @user ||= User.create(:fb_uid => 5)
    end

    private
      def facebook_cookie(fb_uid)
        payload = "uid=#{fb_uid}"
        sig = Digest::MD5.hexdigest("#{payload}#{Facebook.secret}")
        "\"uid=#{fb_uid}&sig=#{sig}\""
      end
  end
end
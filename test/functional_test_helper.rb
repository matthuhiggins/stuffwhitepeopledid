require 'test_helper'

module ActionController
  class TestCase
    [:get, :post, :put, :delete].each do |method|
      class_eval <<-RUBY_EVAL, __FILE__, __LINE__ + 1
        def facebook_#{method}(*args)
          set_facebook_cookie
          #{method}(*args)
          facebook_user.reload
        end
      RUBY_EVAL
    end

    def facebook_user
      @user ||= User.create(:fb_uid => 5)
    end

    private
      def set_facebook_cookie
        request.cookies[facebook_cookie_name] = facebook_cookie_value(facebook_user.fb_uid)
      end

      def facebook_cookie_name
        "fbs_#{Facebook.app_id}"
      end

      def facebook_cookie_value(fb_uid)
        payload = "uid=#{fb_uid}"
        sig = Digest::MD5.hexdigest("#{payload}#{Facebook.secret}")
        "\"uid=#{fb_uid}&sig=#{sig}\""
      end
  end
end
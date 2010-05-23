require 'test_helper'

module ActionController
  class TestCase
    module FriendActionTests
      def test_empty_friends
        facebook_get :friends
        assert_response :ok
      end

      def test_any_friends
        user_1 = User.create(:fb_uid => 1)
        user_2 = User.create(:fb_uid => 2)
        user_3 = User.create(:fb_uid => 3)

        get :friends, :fb_uids => '2,3'

        assert_equal [user_2, user_3].to_set, assigns(:users).to_set
      end
    end

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
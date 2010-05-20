module FacebookConnect
  extend ActiveSupport::Concern
  
  included do
    extend ActiveSupport::Memoizable
    memoize :facebook_cookie
    helper_method :facebook_connected?, :facebook_uid, :facebook_user, :facebook_app_id
  end

  private
    def facebook_app_id
      '90926621564'
    end

    def facebook_secret
      '6045be51632c0658b3021c5653295ca1'
    end
  
    def facebook_cookie
      if Rails.development?
        cookie = 
      else
        return unless (cookie = cookies["fbs_#{facebook_app_id}"])
      end
      cookie = cookie.gsub(/^\"|\"$/, '')
      hash = Rack::Utils::parse_query(cookie)
      sorted_pairs = hash.sort
    
      payload = ''
      sorted_pairs.each do |key, value|
        if key != 'sig'
          payload += "#{key}=#{value}"
        end
      end
    
      md5 = Digest::MD5.hexdigest("#{payload}#{facebook_secret}")
      if md5 == hash['sig']
        hash
      end
    end

    def facebook_connected?
      facebook_cookie.present?
    end

    def facebook_uid
      facebook_cookie['uid']
    end

    def facebook_user
      if facebook_connected?
        @facebook_user ||= User.find_or_create_by_fb_uid(facebook_uid)
        @facebook_user.access_token = facebook_cookie['access_token']
        @facebook_user
      end
    end
end
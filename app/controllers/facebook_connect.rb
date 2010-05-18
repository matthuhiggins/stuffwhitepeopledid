module FacebookConnect
  extend ActiveSupport::Concern
  
  included do
    extend ActiveSupport::Memoizable
    memoize :facebook_cookie
  end

  private
    def facebook_cookie
      return unless (cookie = cookies["fbs_#{facebook_app_id}"])
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

    def facebook_user
      if facebook_cookie.present?
        @facebook_user ||= User.find_or_create_by_fb_uid(facebook_cookie['uid'])
        @facebook_user.access_token = facebook_cookie['access_token']
        @facebook_user
      end
    end

    def facebook_app_id
      '69162949889'
    end

    def facebook_secret
      '7ca5744c4ca98036aa2861ba777c7660'
    end
end
require 'net/http'
require 'uri'

class GraphApi
  class << self
    # {
    #   "data": [
    #     {
    #        "id": "213508"
    #     },
    #     {
    #        "id": "10706112"
    #     },
    #     {
    #        "id": "10708326"
    #     }
    #     ...
    #   ]
    # }
    def friends(access_token)
      url = "#{root_path}/me/friends?access_token=#{access_token}&fields=id"
      body = Net::HTTP.get URI.parse(url)
      ActiveSupport::JSON.decode(json)['data']
    end

    def wall_post(access_token, message)
      # curl -F 'access_token=...' \
      #      -F 'message=I am posting to my own feed. I am awesome.' \
      #      https://graph.facebook.com/me/feed
    end
    
    private
      def root_path
        'https://graph.facebook.com'
      end
  end
end
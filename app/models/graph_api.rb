require 'net/http'
require 'net/https'
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
      url = "#{root_path}/me/friends?access_token=#{CGI.escape(access_token)}&fields=id"
      uri = URI.parse(url)
      http = Net::HTTP.new(uri.host, uri.port)
      http.use_ssl = true
      http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      request = Net::HTTP::Get.new(uri.request_uri)
      response = http.request(request)
      ActiveSupport::JSON.decode(response.body)['data']
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
module NoWww
  extend ActiveSupport::Concern

  included do
    before_filter :redirect_if_www
  end

  private
    def redirect_if_www
      if request.subdomains.first == 'www'
        redirect_to 'http://stuffwhitepeopledid.com'
      end
    end
end
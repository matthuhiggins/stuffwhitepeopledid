class ApplicationController < ActionController::Base
  include NoSubdomain
  include WhiteFriends
  protect_from_forgery
  layout 'swpd'

  before_filter do
    if fb.connected? && fb.user.new_record?
      # data = fb.graph.get('me')
      # fb.user.first_name = data['first_name']
      # fb.user.last_name = data['last_name']
      fb.user.save
    end
  end
end

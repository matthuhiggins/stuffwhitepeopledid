class ApplicationController < ActionController::Base
  include FacebookConnect
  include NoSubdomain
  include WhiteFriends
  protect_from_forgery
  layout 'swpd'
end

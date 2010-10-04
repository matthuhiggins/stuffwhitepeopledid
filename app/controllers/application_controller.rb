class ApplicationController < ActionController::Base
  include NoSubdomain
  include WhiteFriends
  protect_from_forgery
  layout 'swpd'
end

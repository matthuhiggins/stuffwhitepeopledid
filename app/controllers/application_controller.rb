class ApplicationController < ActionController::Base
  include FacebookConnect
  include NoSubdomain
  protect_from_forgery
  layout 'landing'
end

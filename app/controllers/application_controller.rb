class ApplicationController < ActionController::Base
  include FacebookConnect
  include NoWww
  protect_from_forgery
  layout 'landing'
end

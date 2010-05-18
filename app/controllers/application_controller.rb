class ApplicationController < ActionController::Base
  include FacebookConnect
  protect_from_forgery
  layout 'landing'
end

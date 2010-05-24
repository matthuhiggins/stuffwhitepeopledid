require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module StuffWhitePeopleDid
  class Application < Rails::Application
    # config.time_zone = 'UTC'
  end
end

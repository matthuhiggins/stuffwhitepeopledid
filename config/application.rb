require File.expand_path('../boot', __FILE__)

require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)

module StuffWhitePeopleDid
  class Application < Rails::Application
    config.active_support.deprecation = :log

    config.facebook = {
      :secret => '6045be51632c0658b3021c5653295ca1',
      :app_id => '90926621564'
    }
  end
end

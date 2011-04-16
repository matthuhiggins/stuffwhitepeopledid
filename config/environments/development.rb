StuffWhitePeopleDid::Application.configure do
  config.cache_classes = false

  config.action_controller.consider_all_requests_local = true
  config.action_view.debug_rjs                         = true
  config.action_controller.perform_caching             = false

  config.action_mailer.raise_delivery_errors = false
  
  config.facebook = {
    :app_id => '163327880368650',
    :secret => '4105d14a4f212c91fc488eb7d31ff2b9'
  }
end
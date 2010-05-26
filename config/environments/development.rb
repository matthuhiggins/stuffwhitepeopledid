StuffWhitePeopleDid::Application.configure do
  config.cache_classes = true#false

  config.action_controller.consider_all_requests_local = true
  config.action_view.debug_rjs                         = true
  config.action_controller.perform_caching             = false

  config.action_mailer.raise_delivery_errors = false
end
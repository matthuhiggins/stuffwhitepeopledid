StuffWhitePeopleDid::Application.configure do
  config.cache_classes = true
  config.action_controller.consider_all_requests_local = false
  config.action_controller.perform_caching             = true

  config.facebook = {
    :app_id => '90926621564',
    :secret => '6045be51632c0658b3021c5653295ca1'
  }
end
ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'rails/test_help'

class ActiveSupport::TestCase
  self.use_transactional_fixtures = true

  def create_user(attributes = {})
    User.create attributes.reverse_merge(:fb_uid => 1)
  end
end

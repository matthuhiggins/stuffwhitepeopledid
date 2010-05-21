ENV["RAILS_ENV"] = "test"
require File.expand_path(File.dirname(__FILE__) + "/../config/environment")
require 'rails/test_help'

module ActiveSupport
  class TestCase
    self.use_transactional_fixtures = true

    def create_user(attributes = {})
      User.create attributes.reverse_merge(:fb_uid => 1)
    end

    def assert_destroyed(record)
      assert_raise(ActiveRecord::RecordNotFound) { record.reload }
    end

    def assert_not_destroyed(record)
      assert_nothing_raised { record.reload }
    end
  end
end

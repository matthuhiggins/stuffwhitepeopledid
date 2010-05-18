require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  def test_index_not_connected
    get :index
    assert_response :ok
  end
end
require 'functional_test_helper'

class HomeControllerTest < ActionController::TestCase
  def test_index_not_connected
    get :index
    assert_response :ok
  end

  def test_index_connected
    facebook_get :index
    assert_response :ok
  end

  def test_friends
    facebook_get :friends, :format => 'js'
  end
end
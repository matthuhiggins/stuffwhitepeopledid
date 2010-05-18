require 'test_helper'

class UsersControllerTest < ActionController::TestCase
  def test_show
    user = create_user
    get :show, :id => user.to_param
    assert_equal user, assigns(:user)
  end
end
require 'functional_test_helper'

class NoSubdomainTest < ActionController::TestCase
  tests HomeController

  def test_redirected_if_www
    request.expects(:subdomains).returns(['www'])
    get :index
    assert_redirected_to 'http://stuffwhitepeopledid.com'
  end
  
  def test_not_redirect_if_no_subdomain
    request.expects(:subdomains).returns([])
    get :index
    assert_response :ok
  end
end
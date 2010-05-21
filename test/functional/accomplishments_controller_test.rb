require 'functional_test_helper'

class AccomplishmentsControllerTest < ActionController::TestCase
  def test_create
    facebook_post :create, :post_number => 5
    
    assert_response :ok
    assert facebook_user.accomplishments.exists?(:post_number => 5)
  end

  def test_create_checks_duplicates
    facebook_user.accomplishments.create :post_number => 5
    assert_nothing_raised do
      facebook_post :create, :post_number => 5
    end
  end

  def test_destroy
    target_accomplishment = facebook_user.accomplishments.create :post_number => 5
    other_accomplishment = facebook_user.accomplishments.create :post_number => 6

    facebook_delete :destroy, :id => 5

    assert_destroyed target_accomplishment
    assert_not_destroyed other_accomplishment
  end

  def test_destroy_handles_not_found
    assert_nothing_raised do
      facebook_delete :destroy, :id => 5
    end
  end
end
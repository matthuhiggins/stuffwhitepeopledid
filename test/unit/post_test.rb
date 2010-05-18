require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def test_all
    assert_equal Post::ARTICLES, Post.all
  end

  def test_count
    assert_equal Post.all.count, Post.count
  end
  
  def test_find
    assert_equal 43, Post.find(43).number
    assert_equal 43, Post.find('43').number
    assert_nil Post.find(9999)
  end

  def test_accomplishments
    user = create_user
    accomplishment_1 = user.accomplishments.create :post_number => 1
    accomplishment_2 = user.accomplishments.create :post_number => 2

    assert_equal [accomplishment_1], Post.find(1).accomplishments
    assert_equal [accomplishment_2], Post.find(2).accomplishments
  end
end
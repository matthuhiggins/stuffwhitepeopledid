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
    assert_nil Post.find(9999)
  end
end
require 'test_helper'

class PostTest < ActiveSupport::TestCase
  def test_all
    assert_equal Post::ARTICLES, Post.all
  end

  def test_count
    assert_equal Post.all.count, Post.count
  end
end
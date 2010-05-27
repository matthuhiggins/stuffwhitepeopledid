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
  
  def test_first_person
    assert_equal 'envy the Ivy League', Post.find(98).first_person
    assert_equal 'hate my parents', Post.find(17).first_person
    assert_equal 'am friends with a lawyer', Post.find(56).first_person
    assert_equal 'have a funny tattoo', Post.find(121).first_person
    assert_equal 'was the only white person around', Post.find(71).first_person
  end

  def test_third_person_plural
    assert_equal 'envy the Ivy League', Post.find(98).third_person_plural
    assert_equal 'hate their parents', Post.find(17).third_person_plural
    assert_equal 'are friends with a lawyer', Post.find(56).third_person_plural
    assert_equal 'have a funny tattoo', Post.find(121).third_person_plural
  end
end
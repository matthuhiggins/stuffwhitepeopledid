class User < ActiveRecord::Base
  extend ActiveSupport::Memoizable
  has_many :accomplishments, :inverse_of => :user
  belongs_to :latest_accomplishment, :class_name => 'Accomplishment'
  
  after_create do
    accomplishments.create(:post => Post.facebook)
  end

  attr_accessor :access_token
  
  scope :recently_accomplished, where('latest_accomplishment_id is not null').order('latest_accomplishment_id desc').includes(:latest_accomplishment)

  def progress
    accomplishments_count.to_f / Post.count.to_f
  end

  def accomplished?(post)
    accomplishments.exists? :post_number => post.number
  end

  # Returns [Post, Post, ...]
  def completed
    posts = accomplishments.map(&:post)
    posts.sort!
    posts
  end
  memoize :completed

  # Returns [Post, Post, ...]
  def incomplete
    Post.all - completed
  end
  memoize :incomplete

  # Returns [Post, Post, ...]
  def similarities(other_user)
    completed & other_user.completed
  end
  memoize :similarities
  
  # Returns [Post, Post, ...]
  def differences(other_user)
    completed - similarities(other_user)
  end
  memoize :differences

  # Returns [Accomplishment, Accomplishment, ...]
  def feed(fb_uids)
    fb_uids = fb_uids + [fb_uid]
    users = User.where(:fb_uid => fb_uids).order('latest_accomplishment_id desc').limit(10).all
    accomplishment_limit = begin
      case users.size
        when 1 then 10
        when 2..4 then 4
        when 5..8 then 2
        when 9..10 then 1
      end
    end
    
    returning [] do |accomplishments|
      users.each do |user|
        accomplishments.concat(user.accomplishments.order('id desc').limit(accomplishment_limit))
      end
      accomplishments.sort! { |a1, a2| a2.created_at <=> a1.created_at }
    end
  end
end

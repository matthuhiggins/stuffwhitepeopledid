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

  def incomplete
    completed_posts = accomplishments.map(&:post)
    Post.all - completed_posts
  end
  memoize :incomplete

  def feed(fb_uids)
    fb_uids = fb_uids + [fb_uid]
    users = User.where(:fb_uid => fb_uids).order('latest_accomplishment_id desc').limit(10)
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
      accomplishments.sort! { |a1, a2| a1.created_at <=> a2.created_at }
    end
  end
end

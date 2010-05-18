class User < ActiveRecord::Base
  has_many :accomplishments, :inverse_of => :user
  belongs_to :latest_accomplishment, :class_name => 'Accomplishment'

  attr_accessor :access_token
  
  named_scope :recently_accomplished, order('latest_accomplishment_id desc').limit(30).includes(:latest_accomplishment)

  # class << self
  #   def recently_accomplished
  #     order('latest_accomplishment_id desc').limit(30).includes(:latest_accomplishment)
  #   end
  # end
  
  def progress
    accomplishments_count.to_f / Post.count.to_f
  end

  def friends
    data = GraphApi.friends(access_token)
    friend_ids = data.map { |attributes| attributes['id'].to_i }
    User.where :fb_uid => friend_ids
  end

  def wall_post(message)
    GraphApi.wall_post message
  end
end

class User < ActiveRecord::Base
  has_many :accomplishments

  attr_accessor :access_token

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

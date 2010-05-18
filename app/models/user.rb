class User < ActiveRecord::Base
  has_many :accomplishments

  attr_accessor :access_token

  def progress
    accomplishments_count.to_f / Post.count.to_f
  end

  def friends
    
  end
end

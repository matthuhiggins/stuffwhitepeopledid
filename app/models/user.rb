class User < ActiveRecord::Base
  has_many :accomplishments

  def progress
    accomplishments_count.to_f / Post.count
  end
end

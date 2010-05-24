class Accomplishment < ActiveRecord::Base
  belongs_to :user, :inverse_of => :accomplishments
  scope :recent, order('id desc')
  
  after_create do
    user.update_attributes(
      :accomplishments_count => user.accomplishments_count + 1,
      :latest_accomplishment => self
    )
  end

  before_destroy do
    user.update_attributes(
      :accomplishments_count => user.accomplishments_count - 1,
      :latest_accomplishment => user.latest_accomplishment == self ? user.accomplishments.last : user.latest_accomplishment
    )
  end
  
  def post
    Post.find(post_number)
  end
  delegate :number, :title, :url, :to => :post

  def post=(post)
    self.post_number = post.number
  end
end

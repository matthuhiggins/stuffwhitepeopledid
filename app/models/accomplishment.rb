class Accomplishment < ActiveRecord::Base
  belongs_to :user, :inverse_of => :accomplishments
  scope :recent, order('id desc')
  
  after_create do
    user.update_attribute :latest_accomplishment, self
  end

  before_destroy do
    if user.latest_accomplishment == self
      latest_accomplishment = user.accomplishments.recent.offset(1).first
    else
      latest_accomplishment = user.latest_accomplishment
    end

    user.update_attribute :latest_accomplishment => latest_accomplishment
  end
  
  def post
    Post.find(post_number)
  end
  delegate :number, :title, :url, :to => :post

  def post=(post)
    self.post_number = post.number
  end
end

class Accomplishment < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  
  def post
    Post.find(post_number)
  end
  delegate :number, :title, :url, :to => :post

  def post=(post)
    self.post_number = post.number
  end
end

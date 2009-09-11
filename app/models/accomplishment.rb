class Accomplishment < ActiveRecord::Base
  belongs_to :user, :counter_cache => true
  
  def post
    Post.find(post_number)
  end
  delegate :number, :name, :url, :to => :post
end

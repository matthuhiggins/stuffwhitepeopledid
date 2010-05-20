class User < ActiveRecord::Base
  has_many :accomplishments, :inverse_of => :user
  belongs_to :latest_accomplishment, :class_name => 'Accomplishment'

  attr_accessor :access_token
  
  scope :recently_accomplished, where('latest_accomplishment_id is not null').order('latest_accomplishment_id desc').limit(15).includes(:latest_accomplishment)

  def progress
    accomplishments_count.to_f / Post.count.to_f
  end

  def serializable_hash(options = {})
    {
      :id                     => id,
      :fb_uid                 => fb_uid.to_s,
      :accomplishments_count  => accomplishments_count
    }
  end
end

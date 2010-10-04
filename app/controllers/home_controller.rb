class HomeController < ApplicationController
  def index
    if fb.connected?
      @random_posts = fb.user.incomplete.shuffle.first(3).compact
      render 'connected'
    else
      render 'index'
    end
  end
  
  def feed
    @accomplishments = fb.user.feed(fb_uid_params)
    render :layout => false
  end

  include PostHelper
  def random_post
    existing = params[:existing].split(',').map(&:to_i)
    @post = fb.user.incomplete.shuffle.detect { |post| existing.exclude?(post.number) }
  end
end
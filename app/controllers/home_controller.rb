class HomeController < ApplicationController
  def index
    if facebook_connected?
      render 'connected'
    else
      render 'index'
    end
  end
  
  def feed
    @accomplishments = facebook_user.feed(fb_uid_params)
    render :layout => false
  end
end
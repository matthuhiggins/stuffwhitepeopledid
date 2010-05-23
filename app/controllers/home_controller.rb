class HomeController < ApplicationController
  include WhiteFriends

  def index
    if facebook_connected?
      render 'connected'
    else
      render 'index'
    end
  end
end
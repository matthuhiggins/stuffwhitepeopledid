class HomeController < ApplicationController
  def index
    if facebook_connected?
      render 'connected'
    else
      render 'index'
    end
  end
end
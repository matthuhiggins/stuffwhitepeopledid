class HomeController < ApplicationController
  respond_to :html, :json

  def index
    if facebook_connected?
      render 'connected'
    else
      render 'index'
    end
  end

  def friends
    if params[:fb_uids].present?
      uids = params[:fb_uids].split(',')
      @users = User.where(:fb_uid => uids).limit(100).order(:accomplishments_count).includes(:latest_accomplishment)
    else
      @users = User.where('1=2')
    end
    respond_with(@users)
  end
end
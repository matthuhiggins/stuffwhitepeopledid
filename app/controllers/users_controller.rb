class UsersController < ApplicationController
  respond_to :html, :json

  def show
    @user = User.find params[:id]
  end

  def index
    if params[:fb_uids].present?
      uids = params[:fb_uids].split(',')
      @users = User.find_all_by_fb_uid(uids)
    else
      @users.limit(30)
    end
    respond_with(@users)
  end
end
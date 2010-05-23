module WhiteFriends
  def friends
    if params[:fb_uids].present?
      uids = params[:fb_uids].split(',')
      @users = User.where(:fb_uid => uids).limit(100).order(:accomplishments_count).includes(:latest_accomplishment)
    else
      @users = User.where('1=2')
    end
  end
end
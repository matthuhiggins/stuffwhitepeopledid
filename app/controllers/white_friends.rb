module WhiteFriends
  private
    def fb_uid_params
      if params[:fb_uids].present?
        params[:fb_uids].split(',')
      else
        []
      end
    end
end
class AccomplishmentsController < ApplicationController
  def update
    unless facebook_user.accomplishments.exists?  :post_number => params[:id]
      accomplishment = facebook_user.accomplishments.create :post_number => params[:id]
    end
    respond_to do |f|
      f.html { redirect_to :back }
      f.json { head :ok }
    end
  end

  def destroy
    facebook_user.accomplishments.where(:post_number => params[:id]).destroy_all
    head :ok
  end
end
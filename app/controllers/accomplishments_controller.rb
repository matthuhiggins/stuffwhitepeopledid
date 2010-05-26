class AccomplishmentsController < ApplicationController
  def update
    unless facebook_user.accomplishments.exists?  :post_number => params[:id]
      accomplishment = facebook_user.accomplishments.create :post_number => params[:id]
    end
    head :ok
  end

  def destroy
    facebook_user.accomplishments.where(:post_number => params[:id]).destroy_all
    redirect_to :back
  end
end
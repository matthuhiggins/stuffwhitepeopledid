class AccomplishmentsController < ApplicationController
  def create
    unless facebook_user.accomplishments.exists?  :post_number => params[:post_number]
      accomplishment = facebook_user.accomplishments.create :post_number => params[:post_number]
    end
    head :ok
  end

  def destroy
    facebook_user.accomplishments.where(:post_number => params[:id]).destroy_all
    head :ok
  end
end
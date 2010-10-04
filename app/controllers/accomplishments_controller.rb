class AccomplishmentsController < ApplicationController
  def update
    unless fb.user.accomplishments.exists?  :post_number => params[:id]
      accomplishment = fb.user.accomplishments.create :post_number => params[:id]
    end
    respond_to do |f|
      f.html { redirect_to :back }
      f.js   { head :ok }
    end
  end

  def destroy
    fb.user.accomplishments.where(:post_number => params[:id]).destroy_all
    redirect_to :back
  end
end
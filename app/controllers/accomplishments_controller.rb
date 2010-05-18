class AccomplishmentsController < ApplicationController
  def create
    accomplishment = facebook_user.accomplishments.create params[:accomplishment]
  end

  def destroy
    accomplishment = facebook_user.accomplishments.find params[:id]
    accomplishment.destroy
  end
end
class SessionsController < ApplicationController

  def new

  end

  def create
    @user = User.find_by(username: params[:username])
    binding.pry
  end 

  def destroy
    session.delete :user_id
  end
end

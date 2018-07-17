class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.create(user_params)
    if @user.save
      session[:user_id] = @user.id
      
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.update(user_params)
    if @user
      redirect_to user_path(@user)
    else
      redirect_to routes_path
    end
  end

  def destroy
    @user = User.find(params[:id]).destroy

    redirect_to routes_path
  end

  private

  def user_params
    params.require(:user).permit(:username, :first_name, :last_name, :password, :birthdate)
  end

end

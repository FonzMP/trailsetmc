class TrailsController < ApplicationController

  def welcome

  end

  def index
    if params[:user_id]
      @trails = User.find(params[:user_id]).trails
    else
      @trails = Trail.all
    end
  end

  def new
    @trail = Trail.new
  end

  def show
    @trail = Trail.find(params[:id])
  end

  def create
    @trail = Trail.create(trail_params)
    if @trail.save
      if @current_user
        @current_user.trails << @trail
        @current_user.save
      end
      redirect_to trail_path(@trail)
    else
      redirect_to new_trail_path
    end
  end

  def edit
    @trail = Trail.find(params[:id])
  end

  def update
    @trail = Trail.update(trail_params)
    if @trail
      redirect_to trail_path(@trail)
    else
      redirect_to new_trail_path
    end
  end

  def destroy
    @trail = Trail.find(params[:id]).destroy

    redirect_to trails_path
  end

  private

  def trail_params
    params.require(:trail).permit(:name, :length)
  end

end

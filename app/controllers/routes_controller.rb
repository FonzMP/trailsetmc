class RoutesController < ApplicationController

  def index
    if params[:user_id]
      @routes = current_user.routes
    else
      @routes = Route.all
    end
  end

  def new
    @route = Route.new
  end

  def show
    @route = Route.find(params[:id])
  end

  def create
    @route = Route.create(route_params)
    if @route.save
      redirect_to route_path(@route)
    else
      redirect_to new_route_path
    end
  end

  def edit
    @route = Route.find(params[:id])
  end

  def update
    @route = Route.update(route_params)
    if @route
      redirect_to route_path(@route)
    else
      redirect_to new_route_path
    end
  end

  def destroy
    @route = Route.find(params[:id]).destroy

    redirect_to routes_path
  end

  private

  def route_params
    params.require(:route).permit(:name, :length)
  end

end

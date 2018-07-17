class RoutesController < ApplicationController

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
  end

  def show

  end

  def create

  end

  def edit

  end

  def update

  end

  def destroy

  end

end

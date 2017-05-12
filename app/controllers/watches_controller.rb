class WatchesController < ApplicationController
  def new
  end

  def create
    render plain: params[:watch].inspect
  end
end

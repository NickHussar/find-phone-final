class TabletsController < ApplicationController
  def new
  end

  def create
    render plain: params[:tablet].inspect
  end
end

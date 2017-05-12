class TransformersController < ApplicationController
  def new
  end

  def create
    render plain: params[:transformer].inspect
  end
end

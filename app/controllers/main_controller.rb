class MainController < ApplicationController
  def index
    @phones = Phone.all
    @tablets = Tablet.all
    @transformers = Transformer.all
    @watches = Watch.all
  end

  def show
    @phone = Phone.find(params[:id])
    @tablet = Tablet.find(params[:id])
    @transformer = Transformer.find(params[:id])
    @watch = Watch.find(params[:id])
    @developer = Developer.find(params[:developer_id])
  end
end

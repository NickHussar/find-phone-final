class MainController < ApplicationController
  def index
    @phones = Phone.all
    @tablets = Tablet.all
    @transformers = Transformer.all
    @watches = Watch.all
  end
end

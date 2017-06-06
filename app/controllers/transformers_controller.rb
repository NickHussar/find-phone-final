class TransformersController < ApplicationController

  http_basic_authenticate_with name: 'Twirx', password: 'maslenak', except: [:index, :show]

  def index
    @transformers = Transformer.all
  end

  def show
    @transformer = Transformer.find(params[:id])
    @developer = Developer.find(params[:id])
  end

  def new
    @transformer = Transformer.new
    @developers = Developer.all
  end

  def edit
    @transformer = Transformer.find(params[:id])
    @developers = Developer.all
  end

  def create
    @transformer = Transformer.new(transformer_params)
    @developers = Developer.all

    if @transformer.save
      redirect_to @transformer
    else
      render 'new'
    end
  end

  def update
    @transformer = Transformer.find(params[:id])
    @developers = Developer.all

    if @transformer.update(transformer_params)
      redirect_to @transformer
    else
      render 'edit'
    end
  end

  def destroy
    @transformer = Transformer.find(params[:id])
    @transformer.destroy

    redirect_to transformers_path
  end

  private
    def transformer_params
      params.require(:transformer).permit(:model, :description, :m_year, :resolution_x, :resolution_y, :diagonal, :screen_type, :dpi, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :ram, :cam, :megapixels, :photo_res_x, :photo_res_y, :hdr, :front_megapixels, :video_res_x, :video_res_y, :fps, :three_g, :four_g, :wifi, :bluetooth, :nfc, :gyroscope, :accelerometer, :light_sensor, :proximity, :sim, :glonass, :disp_protect, :card, :card_max, :compass, :autofocus, :diaphragm, :jack, :wireless_charge, :fast_charge, :type_c, :vr, :battery, :standby_time, :talk_time, :os, :color, :weight, :dimensions, :material, :protection)
    end
end

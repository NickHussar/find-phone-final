class WatchesController < ApplicationController

  http_basic_authenticate_with name: 'Twirx', password: 'maslenak', except: [:index, :show]

  def index
    @watches = Watch.all
  end

  def show
    @watch = Watch.find(params[:id])
    @developer = Developer.find(params[:id])
  end

  def new
    @watch = Watch.new
    @developers = Developer.all
  end

  def edit
    @watch = Watch.find(params[:id])
    @developers = Developer.all
  end

  def create
    @watch = Watch.new(watch_params)
    @developers = Developer.all

    if @watch.save
      redirect_to @watch
    else
      render 'new'
    end
  end

  def update
    @watch = Watch.find(params[:id])
    @developers = Developer.all

    if @watch.update(watch_params)
      redirect_to @watch
    else
      render 'edit'
    end
  end

  def destroy
    @watch = Watch.find(params[:id])
    @watch.destroy

    redirect_to watches_path
  end

  private
    def watch_params
      params.require(:watch).permit(:model, :description, :m_year, :resolution_x, :resolution_y, :diagonal, :screen_type, :dpi, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :ram, :cam, :megapixels, :photo_res_x, :photo_res_y, :hdr, :front_megapixels, :video_res_x, :video_res_y, :fps, :three_g, :four_g, :wifi, :bluetooth, :nfc, :gyroscope, :accelerometer, :light_sensor, :proximity, :sim, :glonass, :disp_protect, :card, :card_max, :compass, :autofocus, :diaphragm, :jack, :wireless_charge, :fast_charge, :type_c, :vr, :battery, :standby_time, :talk_time, :os, :color, :weight, :dimensions, :material, :protection)
    end
end

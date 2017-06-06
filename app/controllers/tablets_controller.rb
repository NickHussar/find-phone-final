class TabletsController < ApplicationController

  http_basic_authenticate_with name: 'Twirx', password: 'maslenak', except: [:index, :show]

  def index
    @tablets = Tablet.all
  end

  def show
    @tablet = Tablet.find(params[:id])
    @developer = Developer.find(params[:id])
  end

  def new
    @tablet = Tablet.new
    @developers = Developer.all
  end

  def edit
    @tablet = Tablet.find(params[:id])
    @developers = Developer.all
  end

  def create
    @tablet = Tablet.new(tablet_params)
    @developers = Developer.all

    if @tablet.save
      redirect_to @tablet
    else
      render 'new'
    end
  end

  def update
    @tablet = Tablet.find(params[:id])
    @developers = Developer.all

    if @tablet.update(tablet_params)
      redirect_to @tablet
    else
      render 'edit'
    end
  end

  def destroy
    @tablet = Tablet.find(params[:id])
    @tablet.destroy

    redirect_to tablets_path
  end

  private
    def tablet_params
      params.require(:tablet).permit(:model, :description, :m_year, :resolution_x, :resolution_y, :diagonal, :screen_type, :dpi, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :ram, :cam, :megapixels, :photo_res_x, :photo_res_y, :hdr, :front_megapixels, :video_res_x, :video_res_y, :fps, :phone, :three_g, :four_g, :wifi, :bluetooth, :nfc, :gyroscope, :accelerometer, :light_sensor, :proximity, :sim, :glonass, :disp_protect, :card, :card_max, :compass, :autofocus, :diaphragm, :jack, :wireless_charge, :fast_charge, :type_c, :battery, :standby_time, :talk_time, :os, :color, :weight, :dimensions, :material, :protection)
    end
end

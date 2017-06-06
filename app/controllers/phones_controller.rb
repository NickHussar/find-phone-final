class PhonesController < ApplicationController

  http_basic_authenticate_with name: 'Twirx', password: 'maslenak', except: [:index, :show]

  def index
    @phones = Phone.all
  end

  def show
    @phone = Phone.find(params[:id])
    @developer = Developer.find(params[:id])
  end

  def new
    @phone = Phone.new
    @developers = Developer.all
  end

  def edit
    @phone = Phone.find(params[:id])
    @developers = Developer.all
  end

  def create
    @phone = Phone.new(phone_params)
    @developers = Developer.all

    if @phone.save
      redirect_to @phone
    else
      render 'new'
    end
  end

  def update
    @phone = Phone.find(params[:id])
    @developers = Developer.all

    if @phone.update(phone_params)
      redirect_to @phone
    else
      render 'edit'
    end
  end

  def destroy
    @phone = Phone.find(params[:id])
    @phone.destroy

    redirect_to phones_path
  end

  private
    def phone_params
      params.require(:phone).permit(:model, :description, :m_year, :resolution_x, :resolution_y, :diagonal, :screen_type, :dpi, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :ram, :cam, :megapixels, :photo_res_x, :photo_res_y, :hdr, :front_megapixels, :video_res_x, :video_res_y, :fps, :three_g, :four_g, :wifi, :bluetooth, :nfc, :gyroscope, :accelerometer, :light_sensor, :proximity, :sim, :glonass, :disp_protect, :card, :card_max, :compass, :autofocus, :diaphragm, :jack, :wireless_charge, :fast_charge, :type_c, :vr, :battery, :standby_time, :talk_time, :os, :color, :weight, :dimensions, :material, :protection)
    end
end

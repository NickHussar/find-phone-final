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
      params.require(:watch).permit(:model, :description, :resolution_x, :resolution_y, :diagonal, :screen_type, :color_screen, :dpi, :touchscreen, :multitouch, :cpu, :cores, :frequency, :gpu, :inner_mem, :ram, :finder, :phone, :e_mail, :wifi, :bluetooth, :nfc, :gps, :gyroscope, :accelerometer, :barometer, :thermometer, :compass, :chronograph, :pedometer, :pulse_sensor, :fitness_tracker, :wireless_charge, :fast_charge, :type_c, :battery, :standby_time, :clock_time, :os, :online_service, :compatibility, :speaker, :mic,  :color, :weight, :dimensions, :material, :protection, :m_year, :disp_protect, :glonass, :light_sensor)
    end
end

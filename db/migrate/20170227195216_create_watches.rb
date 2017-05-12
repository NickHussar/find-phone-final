class CreateWatches < ActiveRecord::Migration[5.0]
  def change
    create_table :watches do |t|
      t.string :developer
      t.string :model
      t.text :description
      t.date :m_year
      t.integer :resolution_x
      t.integer :resolution_y
      t.decimal :diagonal, precision: 3, scale: 1
      t.string :screen_type
      t.boolean :color_screen
      t.integer :dpi
      t.boolean :touchscreen
      t.integer :multitouch
      t.string :cpu
      t.integer :cores
      t.decimal :frequency, precision: 3, scale: 1
      t.string :gpu
      t.integer :inner_mem
      t.integer :ram
      t.boolean :cam
      t.decimal :megapixels, precision: 3, scale: 1
      t.integer :photo_res_x
      t.integer :photo_res_y
      t.boolean :autofocus
      t.boolean :video_rec
      t.integer :video_res_x
      t.integer :video_res_y
      t.integer :fps
      t.boolean :finder
      t.boolean :phone
      t.boolean :e_mail
      t.string :wifi
      t.string :bluetooth
      t.boolean :nfc
      t.boolean :gps
      t.boolean :gyroscope
      t.boolean :accelerometer
      t.boolean :barometer
      t.boolean :thermometer
      t.boolean :compass
      t.boolean :chronograph
      t.boolean :pedometer
      t.boolean :pulse_sensor
      t.boolean :fitness_tracker
      t.boolean :wireless_charge
      t.boolean :fast_charge
      t.boolean :type_c
      t.integer :battery
      t.integer :standby_time
      t.integer :clock_time
      t.string :os
      t.string :online_service
      t.string :compatibility
      t.boolean :speaker
      t.boolean :mic
      t.string :color
      t.integer :weight
      t.string :dimensions
      t.string :material
      t.string :protection

      t.timestamps
    end
  end
end

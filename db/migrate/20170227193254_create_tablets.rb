class CreateTablets < ActiveRecord::Migration[5.0]
  def change
    create_table :tablets do |t|
      t.string :developer
      t.string :model
      t.text :description
      t.date :m_year
      t.integer :resolution_x
      t.integer :resolution_y
      t.decimal :diagonal, precision: 3, scale: 1
      t.string :screen_type
      t.integer :dpi
      t.integer :multitouch
      t.string :cpu
      t.integer :cores
      t.decimal :frequency, precision: 3, scale: 1
      t.string :gpu
      t.integer :inner_mem
      t.integer :ram
      t.string :cam
      t.decimal :megapixels, precision: 3, scale: 1
      t.integer :photo_res_x
      t.integer :photo_res_y
      t.boolean :hdr
      t.decimal :front_megapixels, precision: 3, scale: 1
      t.integer :video_res_x
      t.integer :video_res_y
      t.integer :fps
      t.boolean :phone
      t.string :three_g
      t.string :four_g
      t.string :wifi
      t.string :bluetooth
      t.boolean :nfc
      t.boolean :gyroscope
      t.boolean :accelerometer
      t.boolean :barometer
      t.boolean :wireless_charge
      t.boolean :fast_charge
      t.boolean :type_c
      t.integer :battery
      t.integer :standby_time
      t.integer :talk_time
      t.string :os
      t.string :color
      t.integer :weight
      t.string :dimensions
      t.string :material
      t.string :protection

      t.timestamps
    end
  end
end

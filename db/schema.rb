# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20170512175158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "developers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.text     "devices"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "phones", force: :cascade do |t|
    t.string   "developer"
    t.string   "model"
    t.text     "description"
    t.date     "m_year"
    t.integer  "resolution_x"
    t.integer  "resolution_y"
    t.decimal  "diagonal",         precision: 3, scale: 1
    t.string   "screen_type"
    t.integer  "dpi"
    t.integer  "multitouch"
    t.string   "cpu"
    t.integer  "cores"
    t.decimal  "frequency",        precision: 3, scale: 1
    t.string   "gpu"
    t.integer  "inner_mem"
    t.integer  "ram"
    t.string   "cam"
    t.decimal  "megapixels",       precision: 3, scale: 1
    t.integer  "photo_res_x"
    t.integer  "photo_res_y"
    t.boolean  "hdr"
    t.decimal  "front_megapixels", precision: 3, scale: 1
    t.integer  "video_res_x"
    t.integer  "video_res_y"
    t.integer  "fps"
    t.string   "three_g"
    t.string   "four_g"
    t.string   "wifi"
    t.string   "bluetooth"
    t.boolean  "nfc"
    t.boolean  "gyroscope"
    t.boolean  "accelerometer"
    t.boolean  "barometer"
    t.boolean  "wireless_charge"
    t.boolean  "fast_charge"
    t.boolean  "type_c"
    t.boolean  "vr"
    t.integer  "battery"
    t.integer  "standby_time"
    t.integer  "talk_time"
    t.string   "os"
    t.string   "color"
    t.integer  "weight"
    t.string   "dimensions"
    t.string   "material"
    t.string   "protection"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "tablets", force: :cascade do |t|
    t.string   "developer"
    t.string   "model"
    t.text     "description"
    t.date     "m_year"
    t.integer  "resolution_x"
    t.integer  "resolution_y"
    t.decimal  "diagonal",         precision: 3, scale: 1
    t.string   "screen_type"
    t.integer  "dpi"
    t.integer  "multitouch"
    t.string   "cpu"
    t.integer  "cores"
    t.decimal  "frequency",        precision: 3, scale: 1
    t.string   "gpu"
    t.integer  "inner_mem"
    t.integer  "ram"
    t.string   "cam"
    t.decimal  "megapixels",       precision: 3, scale: 1
    t.integer  "photo_res_x"
    t.integer  "photo_res_y"
    t.boolean  "hdr"
    t.decimal  "front_megapixels", precision: 3, scale: 1
    t.integer  "video_res_x"
    t.integer  "video_res_y"
    t.integer  "fps"
    t.boolean  "phone"
    t.string   "three_g"
    t.string   "four_g"
    t.string   "wifi"
    t.string   "bluetooth"
    t.boolean  "nfc"
    t.boolean  "gyroscope"
    t.boolean  "accelerometer"
    t.boolean  "barometer"
    t.boolean  "wireless_charge"
    t.boolean  "fast_charge"
    t.boolean  "type_c"
    t.integer  "battery"
    t.integer  "standby_time"
    t.integer  "talk_time"
    t.string   "os"
    t.string   "color"
    t.integer  "weight"
    t.string   "dimensions"
    t.string   "material"
    t.string   "protection"
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
  end

  create_table "transformers", force: :cascade do |t|
    t.string   "developer"
    t.string   "model"
    t.text     "description"
    t.date     "m_year"
    t.integer  "resolution_x"
    t.integer  "resolution_y"
    t.decimal  "diagonal",        precision: 3, scale: 1
    t.string   "screen_type"
    t.integer  "dpi"
    t.integer  "multitouch"
    t.string   "cpu"
    t.integer  "cores"
    t.decimal  "frequency",       precision: 3, scale: 1
    t.string   "gpu"
    t.integer  "inner_mem"
    t.integer  "ram"
    t.string   "cam"
    t.decimal  "megapixels",      precision: 3, scale: 1
    t.integer  "photo_res_x"
    t.integer  "photo_res_y"
    t.boolean  "hdr"
    t.integer  "video_res_x"
    t.integer  "video_res_y"
    t.integer  "fps"
    t.string   "wifi"
    t.string   "bluetooth"
    t.boolean  "nfc"
    t.boolean  "gyroscope"
    t.boolean  "accelerometer"
    t.boolean  "barometer"
    t.boolean  "wireless_charge"
    t.boolean  "fast_charge"
    t.boolean  "stylus"
    t.string   "interfaces"
    t.string   "cards"
    t.integer  "battery"
    t.integer  "standby_time"
    t.string   "os"
    t.string   "color"
    t.integer  "weight"
    t.string   "dimensions"
    t.string   "material"
    t.string   "protection"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  create_table "watches", force: :cascade do |t|
    t.string   "developer"
    t.string   "model"
    t.text     "description"
    t.date     "m_year"
    t.integer  "resolution_x"
    t.integer  "resolution_y"
    t.decimal  "diagonal",        precision: 3, scale: 1
    t.string   "screen_type"
    t.boolean  "color_screen"
    t.integer  "dpi"
    t.boolean  "touchscreen"
    t.integer  "multitouch"
    t.string   "cpu"
    t.integer  "cores"
    t.decimal  "frequency",       precision: 3, scale: 1
    t.string   "gpu"
    t.integer  "inner_mem"
    t.integer  "ram"
    t.boolean  "cam"
    t.decimal  "megapixels",      precision: 3, scale: 1
    t.integer  "photo_res_x"
    t.integer  "photo_res_y"
    t.boolean  "autofocus"
    t.boolean  "video_rec"
    t.integer  "video_res_x"
    t.integer  "video_res_y"
    t.integer  "fps"
    t.boolean  "finder"
    t.boolean  "phone"
    t.boolean  "e_mail"
    t.string   "wifi"
    t.string   "bluetooth"
    t.boolean  "nfc"
    t.boolean  "gps"
    t.boolean  "gyroscope"
    t.boolean  "accelerometer"
    t.boolean  "barometer"
    t.boolean  "thermometer"
    t.boolean  "compass"
    t.boolean  "chronograph"
    t.boolean  "pedometer"
    t.boolean  "pulse_sensor"
    t.boolean  "fitness_tracker"
    t.boolean  "wireless_charge"
    t.boolean  "fast_charge"
    t.boolean  "type_c"
    t.integer  "battery"
    t.integer  "standby_time"
    t.integer  "clock_time"
    t.string   "os"
    t.string   "online_service"
    t.string   "compatibility"
    t.boolean  "speaker"
    t.boolean  "mic"
    t.string   "color"
    t.integer  "weight"
    t.string   "dimensions"
    t.string   "material"
    t.string   "protection"
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

end

# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of ActiveRecord to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 13) do

  create_table "gas_records", :force => true do |t|
    t.float    "gallons"
    t.integer  "odometer_reading"
    t.date     "date"
    t.integer  "gas_type_id"
    t.integer  "gas_vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "price",            :precision => 4, :scale => 2
    t.integer  "miles"
    t.float    "mileage"
    t.float    "miles_per_dollar"
  end

  create_table "gas_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "gas_vendors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oil_records", :force => true do |t|
    t.float    "quarts"
    t.integer  "odometer_reading"
    t.date     "date"
    t.integer  "oil_type_id"
    t.integer  "oil_vendor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oil_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "oil_vendors", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "other_records", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "odometer_reading"
    t.date     "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "odometer_reading_bad"
    t.boolean  "done"
  end

end

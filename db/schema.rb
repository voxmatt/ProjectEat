# encoding: UTF-8
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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20120120035516) do

  create_table "list_items", :force => true do |t|
    t.integer  "restaurant_id"
    t.integer  "list_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lists", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "restaurants", :force => true do |t|
    t.string   "Name"
    t.text     "Blurb"
    t.integer  "Average_Rating"
    t.string   "URL"
    t.string   "Menu_URL"
    t.integer  "Cost_Low"
    t.integer  "Cost_High"
    t.string   "Food_Type"
    t.string   "Meals"
    t.string   "Days_Open"
    t.string   "Reservations"
    t.string   "Reservation_URL"
    t.string   "Address1"
    t.string   "Address2"
    t.string   "City"
    t.string   "State"
    t.integer  "Zip"
    t.string   "Phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reviews", :force => true do |t|
    t.string   "Publication"
    t.string   "Author"
    t.string   "Review_Date"
    t.decimal  "Rating_Raw"
    t.decimal  "Rating_Scale"
    t.decimal  "Rating"
    t.string   "Review_URL"
    t.text     "Review_Quote"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "restaurant_id"
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

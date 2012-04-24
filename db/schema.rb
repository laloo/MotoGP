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

ActiveRecord::Schema.define(:version => 20111215183518) do

  create_table "circuits", :force => true do |t|
    t.string   "name"
    t.float    "length"
    t.string   "nationality"
    t.float    "lat"
    t.float    "long"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.date     "date"
  end

  create_table "riders", :force => true do |t|
    t.string   "name"
    t.string   "surname"
    t.date     "date_of_birth"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "team_id"
    t.integer  "score"
  end

  create_table "scores", :force => true do |t|
    t.integer  "rider_id"
    t.integer  "circuit_id"
    t.integer  "position"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "teams", :force => true do |t|
    t.string   "name"
    t.string   "colors"
    t.string   "nationality"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

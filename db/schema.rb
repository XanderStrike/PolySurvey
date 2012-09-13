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

ActiveRecord::Schema.define(:version => 20120913070823) do

  create_table "results", :force => true do |t|
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "match_scenario"
    t.integer  "poll_scenario"
    t.integer  "vote"
    t.datetime "time1"
    t.datetime "time2"
    t.datetime "time3"
    t.datetime "time4"
    t.datetime "time5"
    t.datetime "time6"
    t.boolean  "survey_finished?"
    t.boolean  "admin?"
    t.integer  "uid"
    t.string   "origin"
    t.integer  "n01"
    t.integer  "n02"
    t.integer  "n03"
    t.integer  "n04"
    t.integer  "n05"
    t.integer  "n06"
    t.integer  "n07"
    t.integer  "n08"
    t.integer  "n09"
    t.integer  "n10"
    t.integer  "n11"
    t.integer  "n12"
    t.integer  "n13"
    t.integer  "n14"
    t.integer  "n15"
    t.integer  "q01"
    t.integer  "q02"
    t.integer  "q03"
    t.integer  "q04"
    t.integer  "q05"
    t.integer  "q06"
    t.integer  "q07"
    t.integer  "q08"
    t.integer  "q09"
    t.integer  "q10"
    t.integer  "q11"
    t.integer  "q12"
    t.integer  "q13"
    t.integer  "q14"
    t.integer  "q15"
    t.integer  "q16"
    t.integer  "q17"
    t.integer  "q18"
    t.integer  "q19"
    t.integer  "q20"
    t.integer  "q21"
    t.integer  "q22"
    t.integer  "q23"
    t.integer  "q24"
    t.integer  "q25"
    t.integer  "q26"
    t.integer  "q27"
    t.integer  "q28"
    t.integer  "q29"
    t.integer  "q30"
    t.integer  "q31"
    t.integer  "q32"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end

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

ActiveRecord::Schema.define(:version => 20120917205630) do

  create_table "results", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.string   "match_scenario"
    t.string   "poll_scenario"
    t.string   "vote"
    t.datetime "time1"
    t.datetime "time2"
    t.datetime "time3"
    t.datetime "time4"
    t.datetime "time5"
    t.datetime "time6"
    t.string   "origin"
    t.string   "n01"
    t.string   "n02"
    t.string   "n03"
    t.string   "n04"
    t.string   "n05"
    t.string   "n06"
    t.string   "n07"
    t.string   "n08"
    t.string   "n09"
    t.string   "n10"
    t.string   "n11"
    t.string   "n12"
    t.string   "n13"
    t.string   "n14"
    t.string   "n15"
    t.string   "q01"
    t.string   "q02"
    t.string   "q03"
    t.string   "q04"
    t.string   "q05"
    t.string   "q06"
    t.string   "q07"
    t.string   "q08"
    t.string   "q09"
    t.string   "q10"
    t.string   "q11"
    t.string   "q12"
    t.string   "q13"
    t.string   "q14"
    t.string   "q15"
    t.string   "q16"
    t.string   "q17"
    t.string   "q18"
    t.string   "q19"
    t.string   "q20"
    t.string   "q21"
    t.string   "q23"
    t.string   "q24"
    t.string   "q25"
    t.string   "q26"
    t.string   "q27"
    t.string   "q28"
    t.string   "q29"
    t.string   "q30"
    t.string   "q31"
    t.string   "q32"
    t.string   "q22a"
    t.string   "q22b"
    t.string   "q22c"
    t.string   "q22d"
    t.string   "q22e"
    t.string   "q30a"
    t.string   "q32a"
    t.string   "q25a"
    t.string   "alignment"
    t.string   "total_time"
    t.string   "q33"
    t.string   "q34"
  end

  create_table "users", :force => true do |t|
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.string   "email"
    t.string   "password"
    t.boolean  "survey_finished"
    t.boolean  "admin"
  end

end

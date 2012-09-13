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

ActiveRecord::Schema.define(:version => 20120913022409) do

  create_table "results", :force => true do |t|
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
    t.integer  "q1"
    t.integer  "q2"
    t.integer  "q3"
    t.integer  "q4"
    t.integer  "q5"
    t.integer  "q6"
    t.integer  "q7"
    t.integer  "q8"
    t.integer  "q9"
    t.integer  "q10"
    t.integer  "q11"
    t.integer  "q12"
    t.integer  "q13"
    t.integer  "q14"
    t.integer  "q15"
    t.integer  "psq1"
    t.integer  "psq2"
    t.integer  "psq3"
    t.integer  "psq4"
    t.integer  "psq5"
    t.integer  "psq6"
    t.integer  "psq7"
    t.integer  "psq8"
    t.integer  "psq9"
    t.integer  "psq10"
    t.integer  "psq11"
    t.integer  "psq12"
    t.integer  "psq13"
    t.integer  "psq14"
    t.integer  "psq15"
    t.integer  "psq16"
    t.integer  "psq17"
    t.integer  "psq18"
    t.integer  "psq19"
    t.integer  "psq20"
    t.integer  "psq21"
    t.integer  "psq22"
    t.integer  "psq23"
    t.integer  "psq24"
    t.integer  "psq25"
    t.integer  "psq26"
    t.integer  "psq27"
    t.integer  "psq28"
    t.integer  "psq29"
    t.integer  "psq30"
    t.integer  "psq31"
    t.integer  "psq32"
    t.integer  "psq33"
    t.integer  "psq34"
    t.integer  "psq35"
    t.integer  "psq36"
    t.integer  "psq37"
    t.integer  "psq38"
    t.integer  "psq39"
    t.integer  "match_scenario"
    t.integer  "poll_scenario"
    t.integer  "vote"
    t.datetime "time1"
    t.datetime "time2"
    t.datetime "time3"
    t.datetime "time4"
    t.datetime "time5"
    t.datetime "time6"
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

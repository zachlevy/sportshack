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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20151128185219) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "plays", force: :cascade do |t|
    t.integer  "game_id"
    t.integer  "cfl_play_id"
    t.integer  "quarter"
    t.string   "time"
    t.integer  "down"
    t.integer  "distance"
    t.integer  "away_score_before"
    t.integer  "away_score_after"
    t.integer  "home_score_before"
    t.integer  "home_score_after"
    t.string   "yardline"
    t.string   "end_yardline"
    t.integer  "end_possession_id"
    t.integer  "continuation"
    t.integer  "play_type_id"
    t.integer  "player1_id"
    t.integer  "player2_id"
    t.integer  "player3_id"
    t.integer  "tackle1_id"
    t.string   "direction"
    t.integer  "yards"
    t.integer  "review"
    t.integer  "review_team_id"
    t.integer  "penalty_id"
    t.string   "details"
    t.string   "name"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  create_table "rosters", force: :cascade do |t|
    t.integer  "stats_inc_id"
    t.integer  "team_id"
    t.integer  "playerstats_id"
    t.string   "first"
    t.string   "last"
    t.integer  "num"
    t.integer  "pos"
    t.integer  "import_status"
    t.string   "height"
    t.string   "weight"
    t.date     "birthdate"
    t.string   "birthplace"
    t.string   "college"
    t.integer  "yrsteam"
    t.integer  "yrsleague"
    t.integer  "ros_status"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "team_id"
    t.string   "integer"
    t.string   "shortname"
  end

end

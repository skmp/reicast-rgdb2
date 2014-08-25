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

ActiveRecord::Schema.define(version: 20140825165432) do

  create_table "compats", force: true do |t|
    t.integer  "game_id"
    t.string   "build"
    t.integer  "stability"
    t.integer  "playability"
    t.string   "quirks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "compats", ["game_id"], name: "index_compats_on_game_id"

  create_table "discs", force: true do |t|
    t.integer  "game_id"
    t.string   "format"
    t.string   "disc_hash"
    t.string   "fingerprint"
    t.string   "region"
    t.string   "version"
    t.integer  "seq_num"
    t.integer  "seq_count"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "discs", ["game_id"], name: "index_discs_on_game_id"

  create_table "games", force: true do |t|
    t.string   "name"
    t.string   "title"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.string   "video_type"
    t.integer  "disc_id"
    t.string   "youtube_id"
    t.string   "build"
    t.string   "hardware"
    t.string   "desc"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["disc_id"], name: "index_videos_on_disc_id"

end

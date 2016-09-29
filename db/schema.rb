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

ActiveRecord::Schema.define(version: 20160929085628) do

  create_table "beer_geeks", force: :cascade do |t|
    t.string   "nom"
    t.text     "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "note"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "festival_id"
  end

  add_index "beers", ["festival_id"], name: "index_beers_on_festival_id"

  create_table "festivals", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.integer  "note"
    t.string   "pays"
    t.string   "lineup"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "notes", force: :cascade do |t|
    t.integer  "star"
    t.integer  "beer_geek_id"
    t.integer  "beer_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "notes", ["beer_geek_id"], name: "index_notes_on_beer_geek_id"
  add_index "notes", ["beer_id"], name: "index_notes_on_beer_id"

end

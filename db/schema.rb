# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.0].define(version: 2023_01_02_203744) do
  create_table "packs", force: :cascade do |t|
    t.string "title"
    t.string "download_link"
    t.integer "songs"
    t.string "stepartists"
    t.integer "minlvl_target"
    t.integer "maxlvl_target"
    t.integer "minlvl_total"
    t.integer "maxlvl_total"
    t.integer "bpm_min"
    t.integer "bpm_max"
    t.integer "difficulties_min"
    t.integer "difficulties_max"
    t.integer "play_type"
    t.integer "play_format"
    t.boolean "ranked"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "songs", force: :cascade do |t|
    t.string "title"
    t.string "artist"
    t.integer "bpm"
    t.integer "length"
    t.string "stepartist"
    t.integer "single_novice"
    t.integer "single_easy"
    t.integer "single_medium"
    t.integer "single_hard"
    t.integer "single_expert"
    t.integer "single_edit"
    t.integer "double_novice"
    t.integer "double_easy"
    t.integer "double_medium"
    t.integer "double_hard"
    t.integer "double_expert"
    t.integer "double_edit"
    t.integer "pack_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pack_id"], name: "index_songs_on_pack_id"
  end

  add_foreign_key "songs", "packs"
end

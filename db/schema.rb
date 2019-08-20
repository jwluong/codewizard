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

ActiveRecord::Schema.define(version: 2019_08_20_080102) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "battle_logs", force: :cascade do |t|
    t.string "user_answer"
    t.bigint "user_id"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_battle_logs_on_character_id"
    t.index ["user_id"], name: "index_battle_logs_on_user_id"
  end

  create_table "characters", force: :cascade do |t|
    t.string "name"
    t.string "gender"
    t.integer "exp", default: 0
    t.integer "coin", default: 0
    t.integer "lv", default: 1
    t.integer "hp", default: 10
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_characters_on_user_id"
  end

  create_table "equipment", force: :cascade do |t|
    t.string "name"
    t.integer "rarity"
    t.string "effect"
    t.text "description"
    t.integer "price"
    t.string "img"
    t.bigint "character_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_equipment_on_character_id"
  end

  create_table "level_progresses", force: :cascade do |t|
    t.bigint "character_id"
    t.bigint "level_id"
    t.string "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["character_id"], name: "index_level_progresses_on_character_id"
    t.index ["level_id"], name: "index_level_progresses_on_level_id"
  end

  create_table "levels", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.string "img"
    t.string "track"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "description"
    t.text "options", default: [], array: true
    t.string "answer"
    t.string "img"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "level_id"
    t.index ["level_id"], name: "index_questions_on_level_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "battle_logs", "characters"
  add_foreign_key "battle_logs", "users"
  add_foreign_key "characters", "users"
  add_foreign_key "equipment", "characters"
  add_foreign_key "level_progresses", "characters"
  add_foreign_key "level_progresses", "levels"
  add_foreign_key "questions", "levels"
end

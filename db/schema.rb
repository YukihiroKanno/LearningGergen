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

ActiveRecord::Schema.define(version: 2021_01_03_124324) do

  create_table "answers", force: :cascade do |t|
    t.integer "year"
    t.integer "jirei"
    t.integer "user_id"
    t.text "ans1"
    t.text "ans2"
    t.text "ans3"
    t.text "ans4"
    t.text "ans5"
    t.text "ans6"
    t.text "ans7"
    t.text "ans8"
    t.text "ans9"
    t.text "ans10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
    t.string "judge"
    t.integer "cnum"
  end

  create_table "comments", force: :cascade do |t|
    t.integer "answer_id"
    t.integer "user_id"
    t.integer "judge1"
    t.text "ans1"
    t.integer "judge2"
    t.text "ans2"
    t.integer "judge3"
    t.text "ans3"
    t.integer "judge4"
    t.text "ans4"
    t.integer "judge5"
    t.text "ans5"
    t.integer "judge6"
    t.text "ans6"
    t.integer "judge7"
    t.text "ans7"
    t.integer "judge8"
    t.text "ans8"
    t.integer "judge9"
    t.text "ans9"
    t.integer "judge10"
    t.text "ans10"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "score"
  end

  create_table "communications", force: :cascade do |t|
    t.integer "title_id"
    t.text "comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "drills", force: :cascade do |t|
    t.integer "user_id"
    t.text "strt"
    t.text "s"
    t.text "w"
    t.text "o"
    t.text "t"
    t.text "j1"
    t.text "j2"
    t.text "j3"
    t.text "j4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profiles", force: :cascade do |t|
    t.integer "user_id"
    t.integer "capa"
    t.integer "expe"
    t.integer "most1"
    t.integer "most2"
    t.integer "most3"
    t.integer "most4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "user_id"
    t.text "strt"
    t.text "s"
    t.text "w"
    t.text "o"
    t.text "t"
    t.text "j1"
    t.text "j2"
    t.text "j3"
    t.text "j4"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "drill_id"
  end

  create_table "titles", force: :cascade do |t|
    t.integer "user_id"
    t.string "title"
    t.text "contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

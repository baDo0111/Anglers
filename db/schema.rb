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

ActiveRecord::Schema.define(version: 2020_08_18_165752) do

  create_table "favorites", force: :cascade do |t|
    t.integer "user_id"
    t.integer "fish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fish", force: :cascade do |t|
    t.string "fishing_title", null: false
    t.string "fish_name", null: false
    t.text "fishing_contents", null: false
    t.date "fishing_date", null: false
    t.float "fish_size", null: false
    t.float "fish_weight", null: false
    t.integer "prefectures", default: 0, null: false
    t.string "fish_image_id"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "fish_comments", force: :cascade do |t|
    t.string "comment"
    t.integer "user_id"
    t.integer "fish_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "relationships", force: :cascade do |t|
    t.integer "follower_id"
    t.integer "followed_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "name", null: false
    t.string "user_image_id"
    t.string "introduction"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

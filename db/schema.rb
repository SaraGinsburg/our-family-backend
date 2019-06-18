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

ActiveRecord::Schema.define(version: 20190614163355) do

  create_table "kind_words", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "when"
    t.string   "what"
    t.string   "to_whom"
    t.float    "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "milestones", force: :cascade do |t|
    t.date     "when"
    t.string   "what"
    t.string   "picture"
    t.integer  "sibling_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nice_deeds", force: :cascade do |t|
    t.integer  "user_id"
    t.date     "when"
    t.string   "what"
    t.string   "to_whom"
    t.string   "picture"
    t.float    "points"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "parents", force: :cascade do |t|
    t.string   "username"
    t.string   "name"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "picture"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.date     "birthdate"
    t.string   "picture"
    t.string   "points_earned"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "last_name"
    t.integer  "parent_id"
    t.string   "username"
    t.string   "password_digest"
  end

end

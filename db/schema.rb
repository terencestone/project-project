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

ActiveRecord::Schema.define(version: 20160919160548) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name",       null: false
    t.integer  "year",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitches", force: :cascade do |t|
    t.string   "title",                         null: false
    t.text     "body",                          null: false
    t.integer  "user_id",                       null: false
    t.integer  "first_round_votes", default: 0
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  create_table "rankings", force: :cascade do |t|
    t.integer  "rank",       null: false
    t.integer  "user_id",    null: false
    t.integer  "pitch_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teams", force: :cascade do |t|
    t.string   "name",        null: false
    t.integer  "pitch_id",    null: false
    t.string   "team_leader"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",                        null: false
    t.string   "email",                           null: false
    t.string   "password_digest"
    t.boolean  "admin",           default: false
    t.integer  "cohort_id"
    t.integer  "team_id"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

end
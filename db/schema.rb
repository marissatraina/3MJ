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

ActiveRecord::Schema.define(version: 20161118155028) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cohorts", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pitches", force: :cascade do |t|
    t.integer  "user_id",                null: false
    t.integer  "round",      default: 1, null: false
    t.string   "app_name",               null: false
    t.text     "text",                   null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["user_id"], name: "index_pitches_on_user_id", using: :btree
  end

  create_table "r1votes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "pitch_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pitch_id"], name: "index_r1votes_on_pitch_id", using: :btree
    t.index ["user_id"], name: "index_r1votes_on_user_id", using: :btree
  end

  create_table "r2votes", force: :cascade do |t|
    t.integer  "user_id",    null: false
    t.integer  "pitch_id",   null: false
    t.integer  "rank",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["pitch_id"], name: "index_r2votes_on_pitch_id", using: :btree
    t.index ["user_id"], name: "index_r2votes_on_user_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.string   "name",            null: false
    t.string   "email",           null: false
    t.string   "password_digest", null: false
    t.boolean  "admin"
    t.integer  "cohort_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["cohort_id"], name: "index_users_on_cohort_id", using: :btree
  end

end

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

ActiveRecord::Schema.define(version: 20180701113555) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.integer "status"
    t.bigint "mentee_id"
    t.bigint "mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["mentee_id"], name: "index_connections_on_mentee_id"
    t.index ["mentor_id"], name: "index_connections_on_mentor_id"
  end

  create_table "events", force: :cascade do |t|
    t.datetime "timestamp"
    t.datetime "event_date"
    t.integer "event_type"
    t.integer "meeting_method"
    t.text "notes"
    t.bigint "connection_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["connection_id"], name: "index_events_on_connection_id"
  end

  create_table "mentees", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "date_created"
    t.string "job_title"
    t.string "expertise"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company"
  end

  create_table "mentors", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "date_created"
    t.string "job_title"
    t.string "expertise"
    t.integer "mentee_slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "company"
  end

  create_table "users", force: :cascade do |t|
    t.string "userName"
    t.text "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "password_digest"
    t.string "remember_digest"
  end

  add_foreign_key "connections", "mentees"
  add_foreign_key "connections", "mentors"
  add_foreign_key "events", "connections"
end

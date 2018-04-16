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

ActiveRecord::Schema.define(version: 20180415050749) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "connections", force: :cascade do |t|
    t.bigint "Mentee_id"
    t.bigint "Mentor_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Mentee_id"], name: "index_connections_on_Mentee_id"
    t.index ["Mentor_id"], name: "index_connections_on_Mentor_id"
  end

  create_table "mentees", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "date_created"
    t.string "job_title"
    t.string "string"
    t.string "expertise"
    t.text "notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mentors", force: :cascade do |t|
    t.string "email"
    t.string "name"
    t.datetime "date_created"
    t.string "job_title"
    t.string "string"
    t.string "expertise"
    t.integer "mentee_slots"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
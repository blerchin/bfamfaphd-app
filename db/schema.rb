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

ActiveRecord::Schema.define(version: 20140213030428) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "questions", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "response_type"
    t.text     "query"
  end

  create_table "responses", force: true do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.integer  "int_val"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "array_val"
    t.string   "string_val"
    t.text     "text_val"
  end

  add_index "responses", ["question_id"], name: "index_responses_on_question_id", using: :btree
  add_index "responses", ["user_id"], name: "index_responses_on_user_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "full_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

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

ActiveRecord::Schema.define(version: 20130511184018) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feelings", force: true do |t|
    t.integer  "user_id",    null: false
    t.integer  "word_id",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "feelings", ["user_id"], name: "index_feelings_on_user_id", using: :btree
  add_index "feelings", ["word_id"], name: "index_feelings_on_word_id", using: :btree

  create_table "users", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "words", force: true do |t|
    t.string   "text",       limit: 64, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "words", ["text"], name: "index_words_on_text", unique: true, using: :btree

end

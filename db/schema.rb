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

ActiveRecord::Schema.define(version: 20160326132327) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "projectmanagers", force: :cascade do |t|
    t.text     "first_name"
    t.text     "last_name"
    t.text     "preferred_first_name"
    t.text     "email"
    t.text     "password_digest"
    t.text     "profile_potrait"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projects", force: :cascade do |t|
    t.text    "organisation"
    t.text    "name"
    t.text    "description"
    t.integer "projectmanager_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.text    "title"
    t.text    "description"
    t.text    "status"
    t.boolean "completion"
    t.integer "difficulty"
    t.text    "deadline"
    t.integer "project_id"
    t.integer "projectmanager_id"
  end

  create_table "teammembers", force: :cascade do |t|
    t.text    "email"
    t.text    "first_name"
    t.text    "last_name"
    t.text    "preferred_first_name"
    t.text    "password_digest"
    t.text    "profile_potrait"
    t.integer "project_id"
    t.integer "projectmanager_id"
  end

end

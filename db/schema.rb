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

ActiveRecord::Schema.define(version: 2019_11_30_005953) do

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.integer "resource_id"
    t.string "author_type"
    t.integer "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "employees", force: :cascade do |t|
    t.string "name", default: "", null: false
    t.string "department", default: "", null: false
    t.integer "gender", default: 0, null: false
    t.date "birth"
    t.date "joined_date"
    t.bigint "payment", default: 0, null: false
    t.text "note", default: "", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "lock_version"
    t.index ["user_id"], name: "index_employees_on_user_id"
  end

  create_table "goals", force: :cascade do |t|
    t.string "title", default: ""
    t.text "action", default: ""
    t.text "problem", default: ""
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_goals_on_user_id"
  end

  create_table "lbmonths", force: :cascade do |t|
    t.text "jan"
    t.text "feb", default: ""
    t.text "mar", default: ""
    t.text "apr", default: ""
    t.text "may", default: ""
    t.text "jun", default: ""
    t.text "jul", default: ""
    t.text "aug", default: ""
    t.text "sep", default: ""
    t.text "oct", default: ""
    t.text "nov", default: ""
    t.text "dec", default: ""
    t.integer "Twentynineteen_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Twentynineteen_id"], name: "index_lbmonths_on_Twentynineteen_id"
  end

  create_table "twentynineteens", force: :cascade do |t|
    t.string "title"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_twentynineteens_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

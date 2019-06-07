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

ActiveRecord::Schema.define(version: 2019_06_07_155222) do

  create_table "customers", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "tel"
    t.boolean "done", default: false
    t.integer "tomb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tomb_id"], name: "index_customers_on_tomb_id"
  end

  create_table "entities", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.string "location"
    t.string "tel"
    t.string "cel"
    t.string "contactname"
    t.string "website"
    t.string "email"
    t.string "contactemail"
    t.string "contacttel"
    t.string "contactcel"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pictures", force: :cascade do |t|
    t.string "image"
    t.integer "tomb_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tomb_id"], name: "index_pictures_on_tomb_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tombs", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.decimal "area"
    t.integer "height"
    t.integer "width"
    t.integer "depth"
    t.integer "capacity"
    t.string "code"
    t.text "notes"
    t.integer "price"
    t.string "location"
    t.boolean "ready"
    t.boolean "light", default: false
    t.date "expdate"
    t.string "category"
    t.string "entity"
    t.integer "level"
    t.integer "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_tombs_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "tel"
    t.string "cel"
    t.string "name"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end

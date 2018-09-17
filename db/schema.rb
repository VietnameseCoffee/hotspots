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

ActiveRecord::Schema.define(version: 2018_09_17_190348) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "business_infos", force: :cascade do |t|
    t.integer "business_id", null: false
    t.string "details", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_business_infos_on_business_id", unique: true
  end

  create_table "businesses", force: :cascade do |t|
    t.string "name", null: false
    t.float "latitude", null: false
    t.float "longitude", null: false
    t.string "address", null: false
    t.string "city", null: false
    t.string "state", null: false
    t.integer "zip"
    t.float "stars"
    t.integer "price", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "phone_number"
    t.index ["latitude", "longitude"], name: "index_businesses_on_latitude_and_longitude", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.integer "business_id", null: false
    t.string "category", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id", "category"], name: "index_categories_on_business_id_and_category", unique: true
    t.index ["business_id"], name: "index_categories_on_business_id"
  end

  create_table "hours", force: :cascade do |t|
    t.integer "business_id", null: false
    t.string "hours", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_hours_on_business_id", unique: true
  end

  create_table "images", force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "business_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_images_on_business_id", unique: true
    t.index ["user_id"], name: "index_images_on_user_id", unique: true
  end

  create_table "reviews", force: :cascade do |t|
    t.integer "business_id", null: false
    t.integer "user_id", null: false
    t.integer "stars", null: false
    t.string "text", null: false
    t.string "post_date", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["business_id"], name: "index_reviews_on_business_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", null: false
    t.string "last_name", null: false
    t.string "email", null: false
    t.string "password_digest", null: false
    t.string "session_token", null: false
    t.integer "zip", null: false
    t.string "birthday"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["password_digest"], name: "index_users_on_password_digest", unique: true
    t.index ["session_token"], name: "index_users_on_session_token", unique: true
  end

end

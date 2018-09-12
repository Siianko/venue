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

<<<<<<< HEAD
ActiveRecord::Schema.define(version: 2018_09_11_034420) do
=======
ActiveRecord::Schema.define(version: 2018_09_11_193231) do
>>>>>>> 54f071ff9f0eb4da758f1701fa6159cad5de3f60

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

  create_table "campaigns", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.bigint "tickets_id"
    t.string "state"
    t.index ["tickets_id"], name: "index_campaigns_on_tickets_id"
    t.index ["user_id"], name: "index_campaigns_on_user_id"
  end

<<<<<<< HEAD
  create_table "genres", force: :cascade do |t|
    t.string "name"
    t.bigint "performer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "performers_id"
    t.index ["performer_id"], name: "index_genres_on_performer_id"
    t.index ["performers_id"], name: "index_genres_on_performers_id"
=======
  create_table "order_items", force: :cascade do |t|
    t.integer "owner_id"
    t.string "owner_type"
    t.integer "quantity"
    t.integer "item_id"
    t.string "item_type"
    t.integer "price_cents", default: 0, null: false
    t.string "price_currency", default: "USD", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "user_id"
    t.integer "state"
    t.index ["user_id"], name: "index_orders_on_user_id"
>>>>>>> 54f071ff9f0eb4da758f1701fa6159cad5de3f60
  end

  create_table "performers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "genre"
    t.string "city"
    t.text "description"
    t.string "facebook"
    t.string "instagram"
    t.string "twitter"
    t.string "website"
    t.string "spotify"
    t.string "youtube"
<<<<<<< HEAD
    t.bigint "genres_id"
    t.index ["genres_id"], name: "index_performers_on_genres_id"
=======
    t.string "state"
>>>>>>> 54f071ff9f0eb4da758f1701fa6159cad5de3f60
  end

  create_table "performers_users", id: false, force: :cascade do |t|
    t.bigint "performer_id", null: false
    t.bigint "user_id", null: false
    t.index ["performer_id", "user_id"], name: "index_performers_users_on_performer_id_and_user_id"
  end

  create_table "tickets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "price"
    t.bigint "campaign_id"
    t.string "name"
    t.index ["campaign_id"], name: "index_tickets_on_campaign_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "provider"
    t.string "uid"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "campaigns", "tickets", column: "tickets_id"
  add_foreign_key "campaigns", "users"
<<<<<<< HEAD
  add_foreign_key "genres", "performers"
  add_foreign_key "genres", "performers", column: "performers_id"
  add_foreign_key "performers", "genres", column: "genres_id"
=======
  add_foreign_key "orders", "users"
>>>>>>> 54f071ff9f0eb4da758f1701fa6159cad5de3f60
  add_foreign_key "tickets", "campaigns"
end

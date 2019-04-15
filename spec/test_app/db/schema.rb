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

ActiveRecord::Schema.define(version: 2019_04_15_113545) do

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.integer "record_id", null: false
    t.integer "blob_id", null: false
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

  create_table "categories_listings", id: false, force: :cascade do |t|
    t.integer "category_id"
    t.integer "listing_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_categories_listings_on_category_id"
    t.index ["listing_id"], name: "index_categories_listings_on_listing_id"
  end

  create_table "phcaccounts_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "firstname"
    t.string "lastname"
    t.string "username"
    t.string "org_id"
    t.integer "role"
    t.index ["email"], name: "index_phcaccounts_users_on_email", unique: true
    t.index ["firstname"], name: "index_phcaccounts_users_on_firstname"
    t.index ["lastname"], name: "index_phcaccounts_users_on_lastname"
    t.index ["org_id"], name: "index_phcaccounts_users_on_org_id", unique: true
    t.index ["reset_password_token"], name: "index_phcaccounts_users_on_reset_password_token", unique: true
    t.index ["username"], name: "index_phcaccounts_users_on_username", unique: true
  end

  create_table "phcmembers_address_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_address_versions"
  end

  create_table "phcmembers_category_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_category_versions"
  end

  create_table "phcmembers_categorylisting_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_catlisting_versions"
  end

  create_table "phcmembers_directory_categories", force: :cascade do |t|
    t.string "catname"
    t.string "user_id"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcmembers_directory_categorylistings", force: :cascade do |t|
    t.integer "category_id"
    t.integer "listing_id"
    t.string "user_id"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_phcmembers_directory_categorylistings_on_category_id"
    t.index ["listing_id"], name: "index_phcmembers_directory_categorylistings_on_listing_id"
  end

  create_table "phcmembers_listing_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_listing_versions"
  end

  create_table "phcmembers_member_addresses", force: :cascade do |t|
    t.string "mcaddressl1"
    t.string "mcaddressl2"
    t.string "mccity"
    t.string "mcprovince"
    t.string "mccountry"
    t.string "mcpostalcode"
    t.string "mctype"
    t.integer "profile_id"
    t.string "user_id"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_phcmembers_member_addresses_on_profile_id"
  end

  create_table "phcmembers_member_listings", force: :cascade do |t|
    t.string "mbcompanyname"
    t.string "mbcontactname"
    t.string "mbaddressl1"
    t.string "mbaddressl2"
    t.string "mbcity"
    t.string "mbprovince"
    t.string "mbcountry"
    t.string "mbpostalcode"
    t.string "mbphone"
    t.string "mbcontactemail"
    t.string "mbwebsite"
    t.integer "profile_id"
    t.string "user_id"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["profile_id"], name: "index_phcmembers_member_listings_on_profile_id"
  end

  create_table "phcmembers_member_profiles", force: :cascade do |t|
    t.string "mfirstname"
    t.string "mlastname"
    t.string "mtitle"
    t.string "memail"
    t.string "mphone"
    t.string "mnotes"
    t.string "user_id"
    t.string "slug"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcmembers_profile_versions", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.text "object", limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "mem_profile_versions"
  end

end

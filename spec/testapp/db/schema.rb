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

ActiveRecord::Schema.define(version: 20170517064427) do

  create_table "phcmembers_directory_categories", force: :cascade do |t|
    t.string "catname"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcmembers_directory_categorylistings", force: :cascade do |t|
    t.integer "category_id"
    t.integer "listing_id"
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_phcmembers_directory_categorylistings_on_category_id"
    t.index ["listing_id"], name: "index_phcmembers_directory_categorylistings_on_listing_id"
  end

  create_table "phcmembers_friendly_id_slugs", force: :cascade do |t|
    t.string "slug", null: false
    t.integer "sluggable_id", null: false
    t.string "sluggable_type", limit: 50
    t.string "scope"
    t.datetime "created_at"
    t.index ["slug", "sluggable_type", "scope"], name: "fri_id_slugable_scope_type", unique: true
    t.index ["slug", "sluggable_type"], name: "index_phcmembers_friendly_id_slugs_on_slug_and_sluggable_type"
    t.index ["sluggable_id"], name: "index_phcmembers_friendly_id_slugs_on_sluggable_id"
    t.index ["sluggable_type"], name: "index_phcmembers_friendly_id_slugs_on_sluggable_type"
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
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
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
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
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
    t.string "slug"
    t.string "user_id"
    t.string "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcmembers_versions_addresses", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "phcmembers_version_address"
  end

  create_table "phcmembers_versions_category", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "phcmembers_version_category"
  end

  create_table "phcmembers_versions_categorylistings", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "phcmembers_version_catlist"
  end

  create_table "phcmembers_versions_listings", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "phcmembers_version_listing"
  end

  create_table "phcmembers_versions_profiles", force: :cascade do |t|
    t.string "item_type", null: false
    t.integer "item_id", null: false
    t.string "event", null: false
    t.string "whodunnit"
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "phcmembers_version_profiles"
  end

end

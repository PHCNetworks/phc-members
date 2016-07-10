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

ActiveRecord::Schema.define(version: 20160707154842) do

  create_table "phcmembers_directory_categories", force: :cascade do |t|
    t.string   "catname"
    t.integer  "business_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["business_id"], name: "index_phcmembers_directory_categories_on_business_id"
  end

  create_table "phcmembers_directory_listings", force: :cascade do |t|
    t.integer  "main_id"
    t.integer  "business_id"
    t.integer  "category_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["business_id"], name: "index_phcmembers_directory_listings_on_business_id"
    t.index ["category_id"], name: "index_phcmembers_directory_listings_on_category_id"
    t.index ["main_id"], name: "index_phcmembers_directory_listings_on_main_id"
  end

  create_table "phcmembers_members_businesses", force: :cascade do |t|
    t.string   "mbcompanyname"
    t.string   "mbcontactname"
    t.string   "mbaddressl1"
    t.string   "mbaddressl2"
    t.string   "mbcity"
    t.string   "mbprovince"
    t.string   "mbcountry"
    t.string   "mbpostalcode"
    t.string   "mbphone"
    t.string   "mbcontactemail"
    t.string   "mbwebsite"
    t.integer  "main_id"
    t.string   "user_id"
    t.string   "membership_id"
    t.string   "oganization_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.index ["main_id"], name: "index_phcmembers_members_businesses_on_main_id"
  end

  create_table "phcmembers_members_contacts", force: :cascade do |t|
    t.string   "mcaddressl1"
    t.string   "mcaddressl2"
    t.string   "mccity"
    t.string   "mcprovince"
    t.string   "mccountry"
    t.string   "mcpostalcode"
    t.string   "mctype"
    t.integer  "main_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.index ["main_id"], name: "index_phcmembers_members_contacts_on_main_id"
  end

  create_table "phcmembers_members_mains", force: :cascade do |t|
    t.string   "mfirstname"
    t.string   "mlastname"
    t.string   "mtitle"
    t.string   "memail"
    t.string   "mphone"
    t.string   "mnotes"
    t.string   "smtwitter"
    t.string   "smfacebook"
    t.string   "smlinkedin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "versions", force: :cascade do |t|
    t.string   "item_type",                     null: false
    t.integer  "item_id",                       null: false
    t.string   "event",                         null: false
    t.string   "whodunnit"
    t.text     "object",     limit: 1073741823
    t.datetime "created_at"
    t.index ["item_type", "item_id"], name: "index_versions_on_item_type_and_item_id"
  end

end

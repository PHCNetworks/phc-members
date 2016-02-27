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

ActiveRecord::Schema.define(version: 20160227213618) do

  create_table "phcmember_directory_categories", force: :cascade do |t|
    t.string   "catname"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "phcmember_directory_catlists", force: :cascade do |t|
    t.integer  "category_id"
    t.integer  "subcategory_id"
    t.integer  "listing_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "phcmember_members_contacts", force: :cascade do |t|
    t.string   "mccontactname"
    t.string   "mccompanyname"
    t.string   "mcaddressl1"
    t.string   "mcaddressl2"
    t.string   "mccity"
    t.string   "mcprovince"
    t.string   "mccountry"
    t.string   "mcpostalcode"
    t.string   "mcphone"
    t.string   "mcemail"
    t.string   "mctype"
    t.integer  "main_id"
    t.integer  "account_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "phcmember_members_contacts", ["main_id"], name: "index_phcmember_members_contacts_on_main_id"

  create_table "phcmember_members_listings", force: :cascade do |t|
    t.string   "mlcontactname"
    t.string   "mlcompanyname"
    t.string   "mladdressl1"
    t.string   "mladdressl2"
    t.string   "mlcity"
    t.string   "mlprovince"
    t.string   "mlcountry"
    t.string   "mlpostalcode"
    t.string   "mlphone"
    t.string   "mlwebsite"
    t.string   "mlemail"
    t.integer  "main_id"
    t.integer  "account_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "phcmember_members_listings", ["main_id"], name: "index_phcmember_members_listings_on_main_id"

  create_table "phcmember_members_mains", force: :cascade do |t|
    t.string   "mfirstname"
    t.string   "mlastname"
    t.string   "mtitle"
    t.string   "memail"
    t.string   "mphone"
    t.string   "mnotes"
    t.integer  "account_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

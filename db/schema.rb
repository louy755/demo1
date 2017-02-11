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

ActiveRecord::Schema.define(version: 20170210230747) do

  create_table "documents", force: :cascade do |t|
    t.text     "viewer"
    t.text     "entry"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_documents_on_patient_id"
  end

  create_table "labs", force: :cascade do |t|
    t.text     "viewer"
    t.string   "item"
    t.string   "value"
    t.datetime "timestamp"
    t.text     "entry"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_labs_on_patient_id"
  end

  create_table "mains", force: :cascade do |t|
    t.text     "view"
    t.text     "text_entry"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_mains_on_patient_id"
  end

  create_table "orders", force: :cascade do |t|
    t.text     "viewer"
    t.string   "item"
    t.string   "value"
    t.datetime "timestamp"
    t.text     "entery"
    t.string   "order"
    t.string   "status"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_orders_on_patient_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string   "gender"
    t.string   "age"
    t.string   "weight"
    t.string   "bp"
    t.string   "pulse"
    t.string   "temp"
    t.string   "rr"
    t.datetime "time"
    t.string   "minutes"
    t.string   "hours"
    t.string   "days"
    t.string   "weeks"
    t.string   "months"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "radiologies", force: :cascade do |t|
    t.text     "viewer"
    t.text     "entry"
    t.integer  "patient_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["patient_id"], name: "index_radiologies_on_patient_id"
  end

end

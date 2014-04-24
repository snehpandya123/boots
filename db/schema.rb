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

ActiveRecord::Schema.define(version: 20140424190348) do

  create_table "allots", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "stock_id"
  end

  add_index "allots", ["stock_id"], name: "index_allots_on_stock_id", using: :btree

  create_table "authorizes", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "authorizes", ["email"], name: "index_authorizes_on_email", unique: true, using: :btree
  add_index "authorizes", ["reset_password_token"], name: "index_authorizes_on_reset_password_token", unique: true, using: :btree

  create_table "employes", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "employes", ["email"], name: "index_employes_on_email", unique: true, using: :btree
  add_index "employes", ["reset_password_token"], name: "index_employes_on_reset_password_token", unique: true, using: :btree

  create_table "emps", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "emps", ["email"], name: "index_emps_on_email", unique: true, using: :btree
  add_index "emps", ["reset_password_token"], name: "index_emps_on_reset_password_token", unique: true, using: :btree

  create_table "hrs", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.integer  "failed_attempts",        default: 0,  null: false
    t.string   "unlock_token"
    t.datetime "locked_at"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "username"
  end

  add_index "hrs", ["email"], name: "index_hrs_on_email", unique: true, using: :btree
  add_index "hrs", ["reset_password_token"], name: "index_hrs_on_reset_password_token", unique: true, using: :btree

  create_table "locations", force: true do |t|
    t.string   "location"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "poapps", force: true do |t|
    t.string   "invoice"
    t.string   "action"
    t.string   "from"
    t.string   "date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "po_id"
  end

  add_index "poapps", ["po_id"], name: "index_poapps_on_po_id", using: :btree

  create_table "pos", force: true do |t|
    t.string   "invoiceno"
    t.string   "pono"
    t.string   "vname"
    t.string   "vadd"
    t.string   "podate"
    t.string   "requisitner"
    t.string   "forby"
    t.string   "forto"
    t.string   "terms"
    t.string   "name"
    t.string   "particular"
    t.string   "unit"
    t.integer  "quantity"
    t.integer  "total"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "requisition_id"
  end

  add_index "pos", ["requisition_id"], name: "index_pos_on_requisition_id", using: :btree

  create_table "realassets", force: true do |t|
    t.string   "name"
    t.string   "typ"
    t.string   "locat"
    t.string   "cost"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "emp_id"
    t.integer  "hr_id"
    t.integer  "authorize_id"
  end

  add_index "realassets", ["authorize_id"], name: "index_realassets_on_authorize_id", using: :btree
  add_index "realassets", ["emp_id"], name: "index_realassets_on_emp_id", using: :btree
  add_index "realassets", ["hr_id"], name: "index_realassets_on_hr_id", using: :btree

  create_table "requisitions", force: true do |t|
    t.string   "name"
    t.string   "particular"
    t.string   "unit"
    t.integer  "quantity"
    t.string   "from"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "total"
    t.integer  "cost"
    t.integer  "emp_id"
  end

  add_index "requisitions", ["emp_id"], name: "index_requisitions_on_emp_id", using: :btree

  create_table "ssends", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "po_id"
  end

  add_index "ssends", ["po_id"], name: "index_ssends_on_po_id", using: :btree

  create_table "stocks", force: true do |t|
    t.string   "name"
    t.string   "invoice"
    t.string   "requ"
    t.string   "sendto"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ssend_id"
  end

  add_index "stocks", ["ssend_id"], name: "index_stocks_on_ssend_id", using: :btree

  create_table "vendors", force: true do |t|
    t.string   "name"
    t.string   "address"
    t.string   "email"
    t.string   "location"
    t.string   "ph_no"
    t.string   "mobile_no"
    t.string   "asset_name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end

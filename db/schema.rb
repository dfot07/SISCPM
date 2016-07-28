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

ActiveRecord::Schema.define(version: 20160728125841) do

  create_table "appearer_acts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "request_act_id"
    t.string   "name"
    t.string   "type_appearer"
    t.string   "document"
    t.string   "class_appearer"
    t.text     "represent_appearer", limit: 65535
    t.string   "type_act"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.index ["request_act_id"], name: "index_appearer_acts_on_request_act_id", using: :btree
    t.index ["user_id"], name: "index_appearer_acts_on_user_id", using: :btree
  end

  create_table "appearers", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "request_property_id"
    t.text     "last_name",           limit: 65535
    t.string   "civil_status"
    t.datetime "created_at",                        null: false
    t.datetime "updated_at",                        null: false
    t.index ["request_property_id"], name: "index_appearers_on_request_property_id", using: :btree
    t.index ["user_id"], name: "index_appearers_on_user_id", using: :btree
  end

  create_table "petitioners", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "request_property_id"
    t.string   "last_name"
    t.string   "name"
    t.string   "document"
    t.string   "civil_status"
    t.string   "address"
    t.integer  "phone"
    t.string   "email"
    t.string   "infodigital"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["request_property_id"], name: "index_petitioners_on_request_property_id", using: :btree
    t.index ["user_id"], name: "index_petitioners_on_user_id", using: :btree
  end

  create_table "properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "request_property_id"
    t.string   "register"
    t.string   "repertory"
    t.date     "date_register"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.index ["request_property_id"], name: "index_properties_on_request_property_id", using: :btree
    t.index ["user_id"], name: "index_properties_on_user_id", using: :btree
  end

  create_table "property_certificate_sequences", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "sequence"
    t.integer  "date_sequence"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_property_certificate_sequences_on_user_id", using: :btree
  end

  create_table "request_acts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "type_act"
    t.date     "date_act"
    t.string   "description_act"
    t.string   "amount_act"
    t.string   "entity"
    t.string   "city_entity"
    t.integer  "sequence"
    t.integer  "date_sequence"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "num_act"
    t.index ["user_id"], name: "index_request_acts_on_user_id", using: :btree
  end

  create_table "request_commercials", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "certificate"
    t.string   "request_certificate"
    t.string   "comment"
    t.integer  "sequence_request"
    t.integer  "sequence_certificate"
    t.integer  "date_sequence"
    t.integer  "date_certificate"
    t.string   "other_type"
    t.string   "other_certificate"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.index ["user_id"], name: "index_request_commercials_on_user_id", using: :btree
  end

  create_table "request_properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.string   "certificate"
    t.string   "request_certificate"
    t.string   "comment"
    t.integer  "sequence_request"
    t.integer  "sequence_certificate"
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
    t.integer  "date_sequence"
    t.integer  "date_certificate"
    t.string   "other_type"
    t.string   "other_certificate"
    t.index ["user_id"], name: "index_request_properties_on_user_id", using: :btree
  end

  create_table "request_sequence_properties", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "sequence"
    t.integer  "date_sequence"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_request_sequence_properties_on_user_id", using: :btree
  end

  create_table "sequence_acts", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.integer  "user_id"
    t.integer  "sequence"
    t.integer  "date_sequence"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.index ["user_id"], name: "index_sequence_acts_on_user_id", using: :btree
  end

  create_table "users", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
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
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  end

  add_foreign_key "appearer_acts", "request_acts"
  add_foreign_key "request_acts", "users"
  add_foreign_key "request_commercials", "users"
  add_foreign_key "sequence_acts", "users"
end

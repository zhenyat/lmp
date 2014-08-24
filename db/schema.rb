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

ActiveRecord::Schema.define(version: 20140824170259) do

  create_table "behaviors", force: true do |t|
    t.integer  "competency_id",                null: false
    t.integer  "level_id",                     null: false
    t.text     "description",                  null: false
    t.boolean  "active",        default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "behaviors", ["competency_id"], name: "behaviors_competency_id_fk", using: :btree
  add_index "behaviors", ["level_id"], name: "behaviors_level_id_fk", using: :btree

  create_table "businesses", force: true do |t|
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "businesses", ["name"], name: "index_businesses_on_name", unique: true, using: :btree

  create_table "clusters", force: true do |t|
    t.string   "name",                        null: false
    t.string   "title",                       null: false
    t.boolean  "mutual",      default: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "competencies", force: true do |t|
    t.integer  "position_id",             null: false
    t.integer  "cluster_id",              null: false
    t.string   "name",                    null: false
    t.string   "title",                   null: false
    t.integer  "rank",        default: 1, null: false
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "competencies", ["cluster_id"], name: "competencies_cluster_id_fk", using: :btree
  add_index "competencies", ["position_id"], name: "competencies_position_id_fk", using: :btree

  create_table "department_types", force: true do |t|
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "department_types", ["name"], name: "index_department_types_on_name", unique: true, using: :btree

  create_table "departments", force: true do |t|
    t.integer  "unit_id",            null: false
    t.integer  "business_id",        null: false
    t.integer  "department_type_id", null: false
    t.string   "name",               null: false
    t.string   "title",              null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "departments", ["business_id"], name: "departments_businesses_id_fk", using: :btree
  add_index "departments", ["department_type_id"], name: "departments_departments_types_id_fk", using: :btree
  add_index "departments", ["unit_id"], name: "departments_units_id_fk", using: :btree

  create_table "employees", force: true do |t|
    t.integer  "department_id",                null: false
    t.integer  "position_id",                  null: false
    t.integer  "level_id",                     null: false
    t.integer  "manager_id",                   null: false
    t.string   "surname",                      null: false
    t.string   "name",                         null: false
    t.string   "middle_name"
    t.string   "pin",                          null: false
    t.boolean  "active",        default: true, null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "employees", ["department_id"], name: "departments_position_id_fk", using: :btree
  add_index "employees", ["level_id"], name: "employees_level_id_fk", using: :btree
  add_index "employees", ["pin"], name: "index_employees_on_pin", unique: true, using: :btree
  add_index "employees", ["position_id"], name: "employees_position_id_fk", using: :btree

  create_table "levels", force: true do |t|
    t.integer  "rank",       null: false
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "levels", ["name"], name: "index_levels_on_name", unique: true, using: :btree
  add_index "levels", ["rank"], name: "index_levels_on_rank", unique: true, using: :btree

  create_table "positions", force: true do |t|
    t.integer  "business_id", null: false
    t.string   "name",        null: false
    t.string   "title",       null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "positions", ["business_id"], name: "positions_businesses_id_fk", using: :btree

  create_table "roles", force: true do |t|
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "roles", ["name"], name: "index_roles_on_name", unique: true, using: :btree

  create_table "unit_types", force: true do |t|
    t.string   "name",       null: false
    t.string   "title",      null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "unit_types", ["name"], name: "index_unit_types_on_name", unique: true, using: :btree

  create_table "units", force: true do |t|
    t.integer  "unit_type_id", null: false
    t.string   "name",         null: false
    t.string   "title",        null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "units", ["name"], name: "index_units_on_name", unique: true, using: :btree
  add_index "units", ["unit_type_id"], name: "units_unit_types_id_fk", using: :btree

  create_table "users", force: true do |t|
    t.integer  "role_id",         null: false
    t.string   "login",           null: false
    t.string   "password_digest", null: false
    t.string   "remember_token"
    t.string   "pin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["login"], name: "index_users_on_login", unique: true, using: :btree
  add_index "users", ["role_id"], name: "users_roles_id_fk", using: :btree

  add_foreign_key "behaviors", "competencies", name: "behaviors_competency_id_fk"
  add_foreign_key "behaviors", "levels", name: "behaviors_level_id_fk"

  add_foreign_key "competencies", "clusters", name: "competencies_cluster_id_fk"
  add_foreign_key "competencies", "positions", name: "competencies_position_id_fk"

  add_foreign_key "departments", "businesses", name: "departments_businesses_id_fk"
  add_foreign_key "departments", "department_types", name: "departments_departments_types_id_fk"
  add_foreign_key "departments", "units", name: "departments_units_id_fk"

  add_foreign_key "employees", "departments", name: "departments_position_id_fk"
  add_foreign_key "employees", "levels", name: "employees_level_id_fk"
  add_foreign_key "employees", "positions", name: "employees_position_id_fk"

  add_foreign_key "positions", "businesses", name: "positions_businesses_id_fk"

  add_foreign_key "units", "unit_types", name: "units_unit_types_id_fk"

  add_foreign_key "users", "roles", name: "users_roles_id_fk"

end

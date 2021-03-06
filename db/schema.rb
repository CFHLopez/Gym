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

ActiveRecord::Schema.define(version: 20171209013310) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activs", force: :cascade do |t|
    t.datetime "fecha"
    t.string   "rutina"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "rut"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pago_id"
    t.string   "rut"
    t.string   "desc"
    t.integer  "edad"
    t.integer  "plan_id"
    t.integer  "diapago"
  end

  create_table "asists", force: :cascade do |t|
    t.datetime "fecha"
    t.integer  "cantidad"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "clase_id"
    t.string   "desc"
  end

  create_table "clases", force: :cascade do |t|
    t.string   "nombre"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "asist_id"
    t.integer  "user_id"
    t.integer  "plan_id"
  end

  create_table "clases_plans", id: false, force: :cascade do |t|
    t.integer "plan_id",  null: false
    t.integer "clase_id", null: false
  end

  add_index "clases_plans", ["clase_id", "plan_id"], name: "index_clases_plans_on_clase_id_and_plan_id", using: :btree
  add_index "clases_plans", ["plan_id", "clase_id"], name: "index_clases_plans_on_plan_id_and_clase_id", using: :btree

  create_table "clases_users", id: false, force: :cascade do |t|
    t.integer "user_id",  null: false
    t.integer "clase_id", null: false
  end

  add_index "clases_users", ["clase_id", "user_id"], name: "index_clases_users_on_clase_id_and_user_id", using: :btree
  add_index "clases_users", ["user_id", "clase_id"], name: "index_clases_users_on_user_id_and_clase_id", using: :btree

  create_table "fichas", force: :cascade do |t|
    t.float    "estatura"
    t.float    "peso"
    t.integer  "biceps"
    t.integer  "triceps"
    t.integer  "subescapular"
    t.integer  "suprailiaco"
    t.float    "IMC"
    t.float    "grasa"
    t.integer  "torax"
    t.integer  "cintura"
    t.integer  "caderas"
    t.integer  "brazo"
    t.integer  "muslo"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
    t.string   "rut"
  end

  create_table "pagos", force: :cascade do |t|
    t.integer  "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "rut"
  end

  create_table "planclases", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "plan_id"
    t.integer  "clase_id"
  end

  create_table "plans", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "desc"
    t.integer  "clase_id"
  end

  create_table "rutinas", force: :cascade do |t|
    t.datetime "fecha"
    t.string   "nombre"
    t.string   "desc"
    t.string   "rut"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "role"
    t.string   "nombre"
    t.string   "rut"
    t.integer  "edad"
    t.string   "sexo"
    t.string   "observacion"
    t.integer  "clase_id"
    t.integer  "plan_id"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "alumnos", "pagos"
  add_foreign_key "alumnos", "plans"
  add_foreign_key "asists", "clases"
  add_foreign_key "clases", "asists"
  add_foreign_key "clases", "plans"
  add_foreign_key "clases", "users"
  add_foreign_key "plans", "clases"
  add_foreign_key "users", "clases"
  add_foreign_key "users", "plans"
end

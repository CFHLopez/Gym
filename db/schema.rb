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

ActiveRecord::Schema.define(version: 20170516002805) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "administradors", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "email"
    t.string   "desc"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "profesor_id"
    t.integer  "clase_id"
    t.integer  "plan_id"
  end

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre"
    t.string   "sexo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "pago_id"
    t.integer  "plan_id"
  end

  create_table "clases", force: :cascade do |t|
    t.string   "nombre"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pagos", force: :cascade do |t|
    t.integer  "monto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "plans", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "precio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "profesors", force: :cascade do |t|
    t.string   "nombre"
    t.integer  "edad"
    t.string   "email"
    t.string   "desc"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "clase_id"
  end

  add_foreign_key "administradors", "clases"
  add_foreign_key "administradors", "plans"
  add_foreign_key "administradors", "profesors"
  add_foreign_key "alumnos", "pagos"
  add_foreign_key "alumnos", "plans"
  add_foreign_key "profesors", "clases"
end
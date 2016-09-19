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

ActiveRecord::Schema.define(version: 20160919023659) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nombre",      limit: 255
    t.string   "apellido",    limit: 255
    t.string   "ci",          limit: 255
    t.date     "fechanac"
    t.string   "luegarnac",   limit: 255
    t.string   "domicilio",   limit: 255
    t.string   "nombrepa",    limit: 255
    t.string   "profesionpa", limit: 255
    t.string   "nombrema",    limit: 255
    t.string   "profesionma", limit: 255
    t.integer  "numeroTelef", limit: 4
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "cobros", force: :cascade do |t|
    t.string   "tipo",       limit: 255
    t.string   "monto",      limit: 255
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.string   "ci",         limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "cuenta", force: :cascade do |t|
    t.string   "nombreAlumno", limit: 255
    t.string   "apellido",     limit: 255
    t.string   "ci",           limit: 255
    t.string   "mes",          limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "cursos", force: :cascade do |t|
    t.string   "curso",        limit: 255
    t.string   "especialidad", limit: 255
    t.string   "seccion",      limit: 255
    t.integer  "tiempo",       limit: 4
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "egresos", force: :cascade do |t|
    t.string   "tipo",       limit: 255
    t.string   "de",         limit: 255
    t.string   "gasto",      limit: 255
    t.integer  "monto",      limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "matriculacions", force: :cascade do |t|
    t.string   "ci",         limit: 255
    t.string   "nombre",     limit: 255
    t.string   "apellido",   limit: 255
    t.integer  "tiempo",     limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "usuarios", force: :cascade do |t|
    t.string   "nombre",                 limit: 255
    t.string   "apellido",               limit: 255
    t.string   "ci",                     limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
  end

  add_index "usuarios", ["email"], name: "index_usuarios_on_email", unique: true, using: :btree
  add_index "usuarios", ["reset_password_token"], name: "index_usuarios_on_reset_password_token", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20150719214820) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "pedidos", force: :cascade do |t|
    t.string   "descripcion_corta"
    t.text     "descripcion_larga"
    t.integer  "user_id"
    t.date     "fecha_entrega"
    t.time     "hora_entrega"
    t.string   "sucursal_entrega"
    t.text     "direccion_entrega"
    t.string   "estado_pedido"
    t.string   "cliente"
    t.string   "numero_guia"
    t.string   "metodo_pago"
    t.integer  "abono"
    t.integer  "precio_total"
    t.string   "celular"
    t.string   "telefono"
    t.string   "correo"
    t.datetime "created_at",            null: false
    t.datetime "updated_at",            null: false
    t.string   "numero_guia_matriz"
    t.string   "numero_pedido_general"
    t.string   "texto_torta"
  end

  add_index "pedidos", ["user_id"], name: "index_pedidos_on_user_id", using: :btree

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
    t.string   "username"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree
  add_index "users", ["username"], name: "index_users_on_username", unique: true, using: :btree

end

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

ActiveRecord::Schema.define(version: 20180413205430) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "blockchains", force: :cascade do |t|
    t.string   "hash"
    t.string   "data"
    t.string   "prev_hash"
    t.string   "time"
    t.string   "index"
    t.string   "nonce"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "delivery_flows", force: :cascade do |t|
    t.string   "pedido"
    t.string   "nombreCliente"
    t.string   "tipoCredito"
    t.string   "fechaPromesaEntrega"
    t.string   "observaciones"
    t.string   "accesorios"
    t.string   "placas"
    t.string   "user_id"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "state"
  end

  create_table "flows", force: :cascade do |t|
    t.string   "current_hash"
    t.string   "data"
    t.string   "prev_hash"
    t.string   "time"
    t.string   "index"
    t.string   "nonce"
    t.string   "company"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "salas", force: :cascade do |t|
    t.string   "nombreSala"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_eights", force: :cascade do |t|
    t.string   "inicio"
    t.string   "fin"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_fives", force: :cascade do |t|
    t.string   "confirmacion"
    t.string   "documentacion"
    t.string   "placas"
    t.string   "observaciones"
    t.string   "gestorConfirmacion"
    t.string   "nombreGestor"
    t.string   "fechaEntregaGestor"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "step_fours", force: :cascade do |t|
    t.string   "accesorio"
    t.string   "inicio"
    t.string   "fin"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_nines", force: :cascade do |t|
    t.string   "sala"
    t.string   "auto"
    t.string   "factura"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "step_sevens", force: :cascade do |t|
    t.string   "fechaRevisionPrevia"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
  end

  create_table "step_sixes", force: :cascade do |t|
    t.string   "revisionPagos"
    t.string   "observaciones"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "step_threes", force: :cascade do |t|
    t.string   "numeroFactura"
    t.string   "vehiculo"
    t.string   "nombreVendedor"
    t.string   "cliente"
    t.text     "notasCargo"
    t.text     "notasCredito"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "step_twos", force: :cascade do |t|
    t.string   "desembolso"
    t.string   "fecha"
    t.string   "hora"
    t.string   "observaciones"
    t.string   "pedido"
    t.string   "user_id"
    t.string   "completado"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tipo_venta", force: :cascade do |t|
    t.string   "tipoVenta"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "subdomain"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

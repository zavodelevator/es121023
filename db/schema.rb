# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2023_10_25_071737) do
  create_table "clients", force: :cascade do |t|
    t.string "name"
    t.string "edrpou"
    t.string "email"
    t.string "ipn"
    t.text "persons"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.integer "our_firm_id", null: false
    t.integer "client_id", null: false
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_orders_on_client_id"
    t.index ["our_firm_id"], name: "index_orders_on_our_firm_id"
  end

  create_table "orders_products", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "order_id", null: false
  end

  create_table "our_firms", force: :cascade do |t|
    t.string "name"
    t.string "edrpou"
    t.string "email"
    t.string "ipn"
    t.text "persons"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "id_s"
    t.string "tags"
    t.string "group_product"
    t.string "sten_on"
    t.string "consists_of"
    t.string "price"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products_suppliers", id: false, force: :cascade do |t|
    t.integer "product_id", null: false
    t.integer "supplier_id", null: false
    t.index ["product_id", "supplier_id"], name: "index_products_suppliers_on_product_id_and_supplier_id", unique: true
    t.index ["supplier_id", "product_id"], name: "index_products_suppliers_on_supplier_id_and_product_id"
  end

  create_table "send_acts", force: :cascade do |t|
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "edrpou"
    t.string "email"
    t.string "ipn"
    t.text "persons"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "orders", "clients"
  add_foreign_key "orders", "our_firms"
end

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

ActiveRecord::Schema[7.1].define(version: 2023_10_17_134122) do
  create_table "firms", force: :cascade do |t|
    t.string "name"
    t.string "edrpou"
    t.string "email"
    t.string "ipn"
    t.text "data"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "orders_products", id: false, force: :cascade do |t|
    t.integer "order_id", null: false
    t.integer "product_id", null: false
    t.index ["order_id", "product_id"], name: "index_orders_products_on_order_id_and_product_id"
    t.index ["product_id", "order_id"], name: "index_orders_products_on_product_id_and_order_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "father_name"
    t.string "email"
    t.string "phone"
    t.text "data"
    t.integer "firm_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["firm_id"], name: "index_people_on_firm_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products_suppliers", id: false, force: :cascade do |t|
    t.integer "supplier_id", null: false
    t.integer "product_id", null: false
    t.index ["product_id", "supplier_id"], name: "index_products_suppliers_on_product_id_and_supplier_id"
    t.index ["supplier_id", "product_id"], name: "index_products_suppliers_on_supplier_id_and_product_id"
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "people", "firms"
end

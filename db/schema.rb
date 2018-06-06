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

ActiveRecord::Schema.define(version: 2018_06_06_154630) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "gammes", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "order_items", force: :cascade do |t|
    t.bigint "produit_id"
    t.bigint "order_id"
    t.integer "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["produit_id"], name: "index_order_items_on_produit_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "status"
    t.bigint "user_id"
    t.decimal "total_price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.decimal "subtotal"
    t.decimal "shipping"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "produits", force: :cascade do |t|
    t.string "marque"
    t.string "nom"
    t.string "reference"
    t.text "photo"
    t.integer "quantite"
    t.string "prix"
    t.integer "frais_de_port"
    t.integer "poids"
    t.text "description"
    t.text "composition"
    t.text "utilisation"
    t.bigint "gamme_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "unit"
    t.index ["gamme_id"], name: "index_produits_on_gamme_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.text "content"
    t.integer "rating"
    t.date "date"
    t.boolean "recommend"
    t.bigint "user_id"
    t.bigint "produit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["produit_id"], name: "index_reviews_on_produit_id"
    t.index ["user_id"], name: "index_reviews_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "admin"
    t.string "prenom"
    t.string "nom"
    t.string "adresse"
    t.string "telephone"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "produits"
  add_foreign_key "orders", "users"
  add_foreign_key "produits", "gammes"
  add_foreign_key "reviews", "produits"
  add_foreign_key "reviews", "users"
end

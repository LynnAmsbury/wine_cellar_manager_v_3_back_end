ActiveRecord::Schema.define(version: 2020_09_28_181905) do

  create_table "update_collections", force: :cascade do |t|
    t.integer "wine_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_update_collections_on_user_id"
    t.index ["wine_id"], name: "index_update_collections_on_wine_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password"
    t.string "email"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "wines", force: :cascade do |t|
    t.string "variety"
    t.string "producer"
    t.string "region"
    t.integer "vintage"
    t.string "notes"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "update_collections", "users"
  add_foreign_key "update_collections", "wines"
end

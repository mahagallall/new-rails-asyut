ActiveRecord::Schema[8.0].define(version: 2025_05_27_175159) do
  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "content"
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "editors_posts", id: false, force: :cascade do |t|
    t.integer "user_id", null: false
    t.integer "post_id", null: false
    t.index ["user_id", "post_id"], name: "index_editors_posts_on_user_id_and_post_id", unique: true
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.date "dob"
    t.string "email"
    t.string "phone_number"
    t.string "address"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "posts", "users"
  add_foreign_key "editors_posts", "users"
  add_foreign_key "editors_posts", "posts"
end
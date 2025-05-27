class CreateEditorsPostsJoinTable < ActiveRecord::Migration[8.0]
  def change
    create_table :editors_posts, id: false do |t|
      t.integer :user_id, null: false
      t.integer :post_id, null: false
    end
    add_index :editors_posts, [:user_id, :post_id], unique: true
    add_foreign_key :editors_posts, :users
    add_foreign_key :editors_posts, :posts
  end
end
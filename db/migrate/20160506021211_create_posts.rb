class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :body
      t.integer :postable_id
      t.string :postable_type

      t.timestamps null: false
    end

    add_index :posts, :postable_id
  end
end

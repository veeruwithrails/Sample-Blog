class CreatePosts < ActiveRecord::Migration
  def up
    create_table :posts do |t|
      t.string :title
      t.text :description

      t.timestamps null: false
    end
  end
  def down
  	remove_table :posts
  end
end

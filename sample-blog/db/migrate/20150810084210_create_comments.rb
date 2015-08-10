class CreateComments < ActiveRecord::Migration
  def up
    create_table :comments do |t|
      t.references :post, index: true, foreign_key: true
      t.text :comment_body

      t.timestamps null: false
    end
  end
  def down
  	remove_table :comments
  end
end

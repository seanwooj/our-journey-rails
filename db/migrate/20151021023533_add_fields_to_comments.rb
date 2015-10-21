class AddFieldsToComments < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.text :content
      t.integer :user_id
      t.integer :upvotes
      t.integer :post_id
    end
  end
end

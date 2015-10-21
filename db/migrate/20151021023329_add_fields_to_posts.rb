class AddFieldsToPosts < ActiveRecord::Migration
  def change
    change_table :posts do |t|
      t.text :content
    end
  end
end

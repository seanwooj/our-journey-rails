class AddSupportCountToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :supports, :integer, :default => 0
  end
end

class AddUniqueIndexToCategorys < ActiveRecord::Migration
  def change
  	add_index :categories, [:user_id, :feti], unique: true
  end
end

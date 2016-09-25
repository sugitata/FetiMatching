class AddHobbyToUsers < ActiveRecord::Migration
  def change
    add_column :users, :hobby, :string, null: false, default: ""
  end
end

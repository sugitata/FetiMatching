class AddTallToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tall, :integer, default: ""
  end
end

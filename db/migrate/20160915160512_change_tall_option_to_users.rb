class ChangeTallOptionToUsers < ActiveRecord::Migration
  def change
  end

    def up
    change_column :users, :tall, :string, default: ""
  end

  def down
    change_column :users, :tall, :string, default: nil
  end
end

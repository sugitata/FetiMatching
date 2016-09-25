class ChangeHobbyOptionToUsers < ActiveRecord::Migration
  def change
  end

    def up
    change_column :users, :hobby, :string, null: false, default: ""
  end

  def down
    change_column :users, :hobby, :string, null: true, default: nil
  end
end



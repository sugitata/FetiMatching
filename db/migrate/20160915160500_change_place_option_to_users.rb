class ChangePlaceOptionToUsers < ActiveRecord::Migration
  def change
  end

    def up
    change_column :users, :place, :string, null: false, default: ""
  end

  def down
    change_column :users, :place, :string, null: true, default: nil
  end
end

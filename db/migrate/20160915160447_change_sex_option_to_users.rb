class ChangeSexOptionToUsers < ActiveRecord::Migration
  def change
  end

    def up
    change_column :users, :sex, :string, default: ""
  end

  def down
    change_column :users, :sex, :string, default: nil
  end


end

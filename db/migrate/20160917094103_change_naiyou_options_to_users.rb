class ChangeNaiyouOptionsToUsers < ActiveRecord::Migration
  def change
  	def up
    change_column :users, :naiyou, :string, null: false, default: ""
  end
 
  def down
    change_column :users, :naiyou, :string, null: true, default: nil
  end
  end
end

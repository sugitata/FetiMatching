class ChangeTubuyakiOptionsToUsers < ActiveRecord::Migration
  def change
  	def up
    change_column :users, :tubuyaki, :string, null: false, default: ""
  end
 
  def down
    change_column :users, :tubuyaki, :string, null: true, default: nil
  end
  end
end

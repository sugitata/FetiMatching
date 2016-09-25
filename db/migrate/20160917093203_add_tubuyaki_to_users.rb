class AddTubuyakiToUsers < ActiveRecord::Migration
  def change
    add_column :users, :tubuyaki, :string, null: false, default: ""
  end
end

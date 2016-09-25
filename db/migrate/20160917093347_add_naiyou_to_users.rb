class AddNaiyouToUsers < ActiveRecord::Migration
  def change
    add_column :users, :naiyou, :string, null: false, default: ""
  end
end

class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.belongs_to :user, index: true, foreign_key: true
      t.integer :feti

      t.timestamps null: false
    end
  end
end

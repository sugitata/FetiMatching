class AddTweetToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :tweet, :string
  end
end

class AddTweetedIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :tweeted_id, :integer
  end
end

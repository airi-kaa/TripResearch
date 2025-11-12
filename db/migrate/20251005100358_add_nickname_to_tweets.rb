class AddNicknameToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :nickname, :string
  end
end

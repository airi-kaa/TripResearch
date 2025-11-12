class AddMoneyToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :money, :string
  end
end

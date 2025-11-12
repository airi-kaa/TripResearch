class AddDaysToTweets < ActiveRecord::Migration[7.2]
  def change
    add_column :tweets, :days, :float
  end
end

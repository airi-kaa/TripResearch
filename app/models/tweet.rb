class Tweet < ApplicationRecord
    has_many :tweets
    has_one_attached :image
end

class Movie < ApplicationRecord
  has_many :likes, dependent: :destroy
end

class Movie < ApplicationRecord
  has_many :likes, dependent: :destroy
  has_one_attached :photo
end

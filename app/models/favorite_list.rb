class FavoriteList < ApplicationRecord
  has_one :users
  has_many :favorite_cars
end

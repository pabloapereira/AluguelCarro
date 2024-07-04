class User < ApplicationRecord
    has_and_belongs_to_many :cars
    has_one :favorite_list
end 

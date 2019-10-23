class User < ApplicationRecord
  has_many :likes
  has_many :comments
  has_many :restaurants, through: :likes
end

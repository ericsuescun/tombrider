class Tomb < ApplicationRecord
  belongs_to :user
  belongs_to :entity

  has_many	:pictures
  has_many	:customers
end

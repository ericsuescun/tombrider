class Tomb < ApplicationRecord
  belongs_to :user

  has_many	:pictures
  has_many	:customers

  validates :title, presence: true

end

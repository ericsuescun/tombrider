class Tomb < ApplicationRecord
  belongs_to :user

  has_many	:pictures, dependent: :destroy
  has_many	:customers, dependent: :destroy

  validates :title, presence: true
  validates :entity, presence: true
  validates :category, presence: true
  validates :price, presence: true

end

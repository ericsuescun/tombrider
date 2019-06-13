class Tomb < ApplicationRecord
  belongs_to :user
  default_scope -> { order(created_at: :desc) }

  has_many	:pictures, dependent: :destroy
  has_many	:customers, dependent: :destroy

  validates :title, presence: true
  validates :entity, presence: true
  validates :category, presence: true
  validates :price, presence: true

end

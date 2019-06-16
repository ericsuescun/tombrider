class Comment < ApplicationRecord
  belongs_to :customer

  validates :body, presence: true, length: { maximum: 250 }
end

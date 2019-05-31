class Picture < ApplicationRecord
  belongs_to :user
  belongs_to :tomb
end

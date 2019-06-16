class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  	devise :database_authenticatable, :registerable,
        	 :recoverable, :rememberable, :validatable

  	has_many	:tombs

  	validates :name, presence: true, length: { maximum: 50 }
  	validates :tel, presence: true, length: { maximum: 7, minimum: 7 }
  	validates :cel, presence: true, length: { maximum: 10, minimum: 10 }
end

class Customer < ApplicationRecord
  belongs_to :tomb

  has_many :comments, dependent: :destroy

	validates :name, presence: true, length: { maximum: 50 }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
	validates :email, length: { maximum: 255}, format: { with: VALID_EMAIL_REGEX }
	before_save   :downcase_email

  	validates :tel, presence: true

  	private

  	    # Converts email to all lower-case.
  	    def downcase_email
  	      email.downcase!
  	    end
end

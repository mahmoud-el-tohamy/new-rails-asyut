class User < ApplicationRecord
  # Validate presence of all fields
  validates :name, :DOB, :phone_number, presence: true
  
  # Validate email presence, uniqueness, and format structure
  validates :email, presence: true, 
                    uniqueness: true, 
                    format: { with: URI::MailTo::EMAIL_REGEXP, message: "must be a valid email address" }
end
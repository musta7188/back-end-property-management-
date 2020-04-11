class Landlord < ApplicationRecord
  has_secure_password

  has_many :properties
  has_many :tenants, through: :properties
  has_many :todos, through: :properties
  has_many :issues, through: :properties

# validates :first_name, presence: true
# validates :first_name, uniqueness: true
# validates :first_name, length: { minimum: 4 }
validates :email, presence: true
validates :email, uniqueness: true
validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i

end

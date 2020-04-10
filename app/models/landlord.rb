class Landlord < ApplicationRecord
  has_many :properties
  has_many :tenants, through: :properties
  has_many :todos, through: :properties
  has_many :issues, through: :properties

end

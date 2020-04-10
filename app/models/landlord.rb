class Landlord < ApplicationRecord
  has_many :properties
  has_many :tenants, through: :properties
end

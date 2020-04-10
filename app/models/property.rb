class Property < ApplicationRecord
  belongs_to :landlord
  has_many :tenants
  has_many :todos
  has_many :issues
end

class Tenant < ApplicationRecord
  belongs_to :property
  has_many :issues
  has_many :todos, through: :properties

end

class District < ApplicationRecord
  belongs_to :city
  has_one :region, through: :city
  has_one :kingdom, through: :city
  has_one :continent, through: :city
  has_many :shops
end

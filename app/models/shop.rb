class Shop < ApplicationRecord
  belongs_to :district
  has_one :city, through: :district
  has_one :region, through: :district
  has_one :kingdom, through: :district
  has_one :continent, through: :district
end

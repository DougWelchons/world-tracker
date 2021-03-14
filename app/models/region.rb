class Region < ApplicationRecord
  belongs_to :kingdom
  has_one :continent, through: :kingdom
  has_many :cities
  has_many :districts, through: :cities
  has_many :shops, through: :cities
  has_many :pois
end

class City < ApplicationRecord
  belongs_to :region
  has_one :kingdom, through: :region
  has_one :continent, through: :region
  has_many :districts
  has_many :shops, through: :districts
end

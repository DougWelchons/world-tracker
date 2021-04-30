class Poi < ApplicationRecord
  belongs_to :region
  has_one :kingdom, through: :region
  has_one :continent, through: :region
  has_one :campaign, through: :region
end

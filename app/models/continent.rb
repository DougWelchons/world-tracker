class Continent < ApplicationRecord
  belongs_to :campaign
  has_many :kingdoms
  has_many :regions, through: :kingdoms
  has_many :cities, through: :kingdoms
  has_many :districts, through: :kingdoms
  has_many :shops, through: :kingdoms
  has_many :pois, through: :kingdoms
end

class Continent < ApplicationRecord
  has_many :kinkdoms
  has_many :regions, through: :kinkdoms
  has_many :cities, through: :kinkdoms
  has_many :districts, through: :kinkdoms
  has_many :shops, through: :kinkdoms
  has_many :pois, through: :kinkdoms
end

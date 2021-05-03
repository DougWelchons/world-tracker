class Campaign < ApplicationRecord
  belongs_to :user
  has_many :continents
  has_many :kingdoms, through: :continents
  has_many :regions, through: :continents
  has_many :cities, through: :continents
  has_many :districts, through: :continents
  has_many :shops, through: :continents
  has_many :pois, through: :continents
end

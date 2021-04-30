class Kingdom < ApplicationRecord
  belongs_to :continent
  has_one :campaign, through: :continent
  has_many :regions
  has_many :cities, through: :regions
  has_many :districts, through: :regions
  has_many :shops, through: :regions
  has_many :pois, through: :regions
end

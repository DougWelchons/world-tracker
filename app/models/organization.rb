class Organization < ApplicationRecord
  belongs_to :kingdom
  has_one :campaign, through: :kingdom
end

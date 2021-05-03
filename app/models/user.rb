class User < ApplicationRecord
  has_many :campaigns

  validates :name, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password, presence: { require: true }
  has_secure_password
end

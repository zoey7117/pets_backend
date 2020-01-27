class User < ApplicationRecord
  has_secure_password
  has_many :pets

  validates :name, uniqueness: true
end

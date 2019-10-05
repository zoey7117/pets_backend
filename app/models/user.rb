class User < ApplicationRecord
  has_secure_password
  has_many :pets

  validates :name, presence: true
end

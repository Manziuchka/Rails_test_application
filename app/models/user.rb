class User < ApplicationRecord
  has_secure_password
  validates :phone, presence: true, uniqueness: true
  validates :phone, phone: true
  validates :name, presence: true
  validates :password,
            length: { minimum: 6 },
            if: -> { new_record? || !password.nil? }
end
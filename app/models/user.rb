class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :pins

  validates :full_name, presence: true
  validates :username, presence: true, uniqueness: true
  validates :phone_number, presence: true
end

class Mentor < ApplicationRecord
  validates :email, presence: true, uniqueness: true

  validates :name, presence: true

  has_many :meetings
  has_many :expertises
end

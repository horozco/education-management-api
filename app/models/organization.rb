class Organization < ActiveRecord::Base
  has_many :coaches
  has_many :grades

  validates :name, presence: true
  validates :address, presence: true
  validates :email, presence: true
end

class Coach < ActiveRecord::Base
  belongs_to :organization

  validates :name, presence: true
  validates :address, presence: true
  validates :organization_id, presence: true
  validates_associated :organization
end

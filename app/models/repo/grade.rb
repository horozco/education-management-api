module Repo
  class Grade < ::ActiveRecord::Base
    belongs_to :organization

    validates :name, presence: true
    validates :organization_id, presence: true
    validates_associated :organization
  end
end

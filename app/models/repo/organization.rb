module Repo
  class Organization < ::ActiveRecord::Base
    validates_presence_of :name, :address, :email
  end
end

require 'rails_helper'

RSpec.describe Organization do
  it { should validate_presence_of :name }
  it { should validate_presence_of :address }
  it { should validate_presence_of :email }

  it { should have_many :coaches }
  it { should have_many :grades }
end

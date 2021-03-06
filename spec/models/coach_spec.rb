require 'rails_helper'

RSpec.describe Coach do
  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:address) }
  it { should validate_presence_of(:organization_id) }
  it { should belong_to(:organization) }
end

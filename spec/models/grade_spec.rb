require 'rails_helper'

RSpec.describe Grade do
  it { should validate_presence_of :name }
  it { should validate_presence_of :organization_id }
  it { should belong_to :organization }
end

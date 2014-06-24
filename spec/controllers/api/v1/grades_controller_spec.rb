require 'rails_helper'

RSpec.describe Api::V1::GradesController do
  before(:all) do
    @organization = FactoryGirl.create(:organization)
  end

  describe "GET index" do
    before do
      get :index, version: 1, organization_id: @organization.id
    end

    it_behaves_like "successful API response", Array
  end

  describe "GET show" do
    let(:grade) { FactoryGirl.create(:grade, organization: @organization) }
    before do
      get :show, version: 1, organization_id: @organization.id, id: grade.id
    end

    it_behaves_like "successful API response", Hash
  end
end

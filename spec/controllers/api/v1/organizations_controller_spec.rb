require 'rails_helper'

RSpec.describe Api::V1::OrganizationsController do
  describe "GET index" do
    before do
      get :index, version: 1
    end

    it_behaves_like "successful API response", Array
  end

  describe "GET show" do
    before do
      @organization = FactoryGirl.build(:organization, id: 1)
      allow(Organization).to receive(:find) { @organization }
      get :show, id: @organization.id, version: 1
    end

    it_behaves_like "successful API response", Hash
  end
end

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

  describe "POST create" do
    let(:params) do
      { name: 'Test Org',
        email: 'test@example.com',
        address: 'Street 1' }
    end

    before do
      post :create, version: 1, organization: params
    end

    it_behaves_like "successful API response", Hash

    context "invalid params" do
      let(:params) do
        { name: 'test' }
      end

      it_behaves_like "unsuccessful API response"
    end
  end
end

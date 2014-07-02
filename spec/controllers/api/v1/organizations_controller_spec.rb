require 'rails_helper'

RSpec.describe Api::V1::OrganizationsController do
  before(:all) do
    @organization = FactoryGirl.create(:organization)
  end

  describe "GET index" do
    before do
      get :index, version: 1
    end

    it_behaves_like "successful API response", Array
  end

  describe "GET show" do
    before do
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

  describe "PATCH update" do
    let(:params) do
      { name: 'Org Test',
        email: 'test@example.com',
        address: 'Street 1' }
    end

    before do
      patch :update, version: 1, id: @organization.id, organization: params
    end

    it_behaves_like "successful API response", Hash

    context "invalid params" do
      let(:params) do
        {name: ''}
      end

      it_behaves_like "unsuccessful API response"
    end
  end
end

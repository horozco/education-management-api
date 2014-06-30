module Api
  module V1
    class OrganizationsController < ApiController

      def index
        expose Organization.all
      end

      def create
        organization = Organization.create! organization_params
        expose organization
      end

      def show
        expose Organization.find(params[:id])
      end

      private

      def organization_params
        params.require(:organization).permit(:name, :address, :email)
      end

    end
  end
end

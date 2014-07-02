module Api
  module V1
    class OrganizationsController < ApiController

      def index
        expose Organization.all
      end

      def create
        expose Organization.create!(organization_params)
      end

      def update
        organization.update!(organization_params)
        expose organization
      end

      def show
        expose organization
      end

      private

      def organization
        @organization ||= Organization.find(params[:id])
      end

      def organization_params
        params.require(:organization).permit(:name, :address, :email)
      end

    end
  end
end

module Api
  module V1
    class OrganizationsController < ApiController

      def index
        expose Organization.all
      end

      def show
        expose Organization.find(params[:id])
      end

    end
  end
end

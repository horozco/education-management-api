module Api
  module V1
    class CoachesController < ApiController
      include OrganizationScoped

      def index
        exposes @organization.coaches
      end

      def show
        expose @organization.coaches.find(params[:id])
      end
    end
  end
end

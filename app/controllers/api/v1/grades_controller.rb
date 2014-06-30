module Api
  module V1
    class GradesController < ApiController
      include OrganizationScoped

      def index
        exposes @organization.grades
      end

      def show
        expose @organization.grades.find(params[:id])
      end
    end
  end
end

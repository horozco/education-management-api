module OrganizationScoped
  extend ActiveSupport::Concern

  included do
    before_action :set_organization
  end

  private
    def set_organization
      @organization = Organization.find(params[:organization_id])
    end
end

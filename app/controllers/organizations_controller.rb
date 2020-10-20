class OrganizationsController < ApplicationController

    def index
        @organizations = Organization.all
        render json: @organizations
    end
    
    def show
        @organization = Organization.create(params[:id])
        render json: @organization
    end

end

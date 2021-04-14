class OrganizationsController < ApplicationController

    # before_action :authorized
    
    def index
        organizations = Organization.all
        render json: organizations
    end
    
    def show
        organization = Organization.find(params[:id])
        render json: organization
    end

    def login 
        organization = Organization.find_by(leadname: params[:leadname])
        # byebug
        if organization && organization.authenticate(params[:password])
            token_tag = encode_token({organization_id: organization.id, role: organization.class.name})
            render json: {
                user: OrganizationSerializer.new(organization),
                token: token_tag,
                role: 'Organization'
            }
        else
            render json: {error: 'Incorrect email or password! Try again!'}, status: 422
        end
    end

    def create
        organization = Organization.create(organization_params)
        if organization.valid?
            token_tag = encode_token({organization_id: organization.id, role: organization.class.name})
            render json: {
                user: OrganizationSerializer.new(organization),
                token: token_tag,
                role: 'Organization'
            }
        else
            render json: {error: 'invalid input'}, status: 422
        end
    end

    private 
    def organization_params
        params.permit(:email, :password)
    end

end

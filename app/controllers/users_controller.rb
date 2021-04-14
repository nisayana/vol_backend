class UsersController < ApplicationController

    before_action :authorized, only: [:persist]

    def create 
        user = User.create(user_params)
        if user.valid?
            token_tag = encode_token({user_id: user.id, role: user.class.name})
            render json: {
              user: UserSerializer.new(user), 
              token: token_tag
              }
          else
            render json: {error: "INVALID USER"}, status: 422
        end
    end

    def login
        user = User.find_by(name: params[:username])
        # byebug
        if user && user.authenticate(params[:password])
          token_tag = encode_token({user_id: user.id, role: user.class.name})
          render json: {
            user: UserSerializer.new(user), 
            token: token_tag
          }
        else
          render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
        end
    end
    
    def persist

        # @user exists here because of the before_action
        # @user can either be an instance of general user or animal shelter
        # avoiding repeated code on animal shelter controller this way



        if @user.email 
          token_tag = encode_token({user_id: @user.id, role: @user.class.name})
          render json: {
            user: OrganizationSerializer.new(@user), 
            token: token_tag,
            role: @user.class.name
          }
        else
          token_tag = encode_token({user_id: @user.id, role: @user.class.name})
          render json: {
            user: UserSerializer.new(@user), 
            token: token_tag,
            role: @user.class.name
          } 
      end
    end
    
    def profile
      render json: logged_user
      end

    def update 
        user = User.find(params[:id])
        user.update(user_params)

        render json: user
    end

    def destroy
        user = User.find(params[:id])
        user.destroy
        render json: {message: "Profile has been deleted", user: user}
    end

    private

    def user_params
        params.permit(:name, :password, :email)
    end 

end

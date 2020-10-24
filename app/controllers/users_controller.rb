class UsersController < ApplicationController

    before_action :autorized, only: [:persist]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.find(params[:id])
        render json: @user
    end

    def create 
        @user = User.create(user_params)
        if @user.valid?
            token_tag = encode_token({user_id: @user.id})

            render json: {
              user: UserSerializer.new(@user), 
              token: token_tag
              }
          else
            render json: {error: "INVALID USER"}, status: 422
        end
    end

    def login
        @user = User.find_by(name: params[:name])
        if @user && @user.authenticate(params[:password])
          token_tag = encode_token({user_id: @user.id})

          render json: {
            user: UserSerializer.new(@user), 
            token: token_tag
          }
        else
          render json: {error: "INCORRECT USERNAME OR PASSWORD"}, status: 422
        end
      end
    
      def persist
        token_tag = encode_token({user_id: @user.id})
        render json: {
          user: UserSerializer.new(@user), 
          token: token_tag
      }
      end
    
      def profile
        render json: logged_user
      end

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)

        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "Profile has been deleted", user: @user}
    end

    private

    def user_params
        params.permit(:name, :password)
    end 

end

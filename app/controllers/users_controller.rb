class UsersController < ApplicationController

    before_action :autorized, only: [:persist]

    def index
        @users = User.all
        render json: @users
    end

    def show
        @user = User.create(params[:id])
        render json: @user
    end

    def create 
        @user = User.create(user_params)
    end

    def update 
        @user = User.find(params[:id])
        @user.update(user_params)

        render json: @user
    end

    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json: {message: "Profile has been deleted", usee: @user}
    end

    private

    def user_params
        params.permit(:name, :age, :password)
    end 

end

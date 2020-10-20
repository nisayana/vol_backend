class DashListJoinersController < ApplicationController

    # def index
    #     @dash_list_joiners = DashListJoiner.all
    #     render json: @dash_list_joiners
    # end

    # def show
    #     @dash_list_joiner = DashListJoiner.create(params[:id])
    #     render json: @dash_list_joiner
    # end

    # def create
        # dash_list_joiner
    # end

    def destroy
        dash_list_joiner = DashListJoiner.find(params[:id])
        dash_list_joiner.destroy
        render json: dash_list_joiner
    end

    private

    def dash_list_joiner_params
        params.permit(:list_id, :user_id)
    end


end

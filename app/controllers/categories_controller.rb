class CategoriesController < ApplicationController

    def index
        @categories = Category.all
        render json: @categories
    end

    def show
        @category = Category.create(params[:id])
        render json: @category
    end

end

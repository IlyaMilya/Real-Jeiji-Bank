class CheckingsController < ApplicationController

    def index 
        checking = Checking.all
        render json: checking, status: 200
    end

    def show
        checking = Checking.find_by(id: params[:id])
        if checking 
            render json: checking, status: 200
        else 
            render json: {error: "User not found"}, status:404
        end
    end

    def update 
        checking = Checking.find_by(id:params[:id])
        if checking 
            checking.update(user_params_permit)
        render json: checking, status: 201
        else
            render json: {error: "Not successful"}, status: 422
        end
    end
    
    def create 
        checking = Checking.create(params.permit) 
        if checking.valid?
            render json: checking, status:201 
        else
            render json: {"errors":"invalid information"}, status: 422
        end
    end

end

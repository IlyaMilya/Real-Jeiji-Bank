class SavingsController < ApplicationController
    def index 
        saving = Saving.all
        render json: saving, status: 200
    end

    def show
        saving = Saving.find_by(id: params[:id])
        if saving 
            render json: saving, status: 200
        else 
            render json: {error: "User not found"}, status:404
        end
    end

    def update 
        saving = Saving.find_by(id:params[:id])
        if saving 
            saving.update(user_params_permit)
        render json: saving, status: 201
        else
            render json: {error: "Not successful"}, status: 422
        end
    end
    
    def create 
        newsave = Saving.create(params.permit) 
        if newsave.valid?
            render json: newsave, status:201 
        else
            render json: {"errors":"invalid information"}, status: 422
        end
    end

end

class ExchangesController < ApplicationController
    def index 
        exchange = Exchange.all
        render json: exchange, status: 200
    end

    def show
        exchange = Exchange.find_by(id: params[:id])
        if exchange 
            render json: exchange, status: 200
        else 
            render json: {error: "User not found"}, status:404
        end
    end

    def update 
        upexchange = Exchange.find_by(id:params[:id])
        if upexchange 
            upexchange.update(user_params_permit)
        render json: upexchange, status: 201
        else
            render json: {error: "Not successful"}, status: 422
        end
    end
    
    def create 
        exchange = Exchange.create(params.permit) 
        if exchange.valid?
            render json: exchange, status:201 
        else
            render json: {"errors":"invalid information"}, status: 422
        end
    end


end

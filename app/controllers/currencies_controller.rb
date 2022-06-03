class CurrenciesController < ApplicationController
    def index 
        currencies = Currency.all 
        render json: currencies 
    end

 def show 
    currency = Currency.find_by(id: params[:id])
    if currency
    render json: currency, status:200 
    else 
    render json: {error: "Currency not found"}, status:404 
 end
end

 def update 
    currency = Currency.find_by(id: params[:id])
    if currency 
    currency.update
    render json: currency, status:200 
    else 
    render json: {error: "update unsuccessful" }
 end
end

    def create 
        currencycreate = Currency.create(params.permit)
        if currencycreate.valid?
            render json: currencycreate, status: 201
        else 
        render json: {error: "failed to create"}, status: 422
    end 
end


    def destroy 
        deletecur = Currency.find_by(id:params[:id])
        if deletecur 
            deletecur.destroy 
            render json: {"Currency deleted"}, status:410
        else 
            render json: {"Delete unsuccessful"}, status:406
    end


    private 

    def params_permit 
        params.permit(:name, :price, :image)
    end 
end


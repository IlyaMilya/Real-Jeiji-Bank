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
    render json: currency, status:201 
    else 
    render json: {error: "update unsuccessful" }
     end
    end

    def create 
        currencycreate = Currency.create(params_permit)
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
            head :no_content, status:401
        else 
            render json: {error: "Delete unsuccessful"}, status:422
    end


    private 

    def params_permit 
        params.permit(:name, :price, :image)
    end 

end
end


class CurrenciesController < ApplicationController
    def index 
        currencies = Currency.all 
        render json: currencies 
    end

    def destroy 
        deletecur = Currency.find_by(id:params[:id])
        if deletecur 
            deletecur.destroy 
            render json: {"Currency deleted"}, status:410
        else 
            render json: {"Delete unsuccessful"}, status:406
    end

end

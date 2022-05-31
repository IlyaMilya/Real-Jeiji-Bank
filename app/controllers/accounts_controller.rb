class AccountsController < ApplicationController

    def index 
        accounts = Account.all
        render json: accounts
    end

    def show 
        account = Account.find_by(id: params[:id])
        if account 
            render json: account 
        else
            render json: {error: "Account not found"}, status: 404
        end
    end

    
end

class SessionController < ApplicationController
#    skip_before_action :authorized, only: :create, :show 
# def create 
#     user = User.find_by(username: params[:username])
#     if user&.authenticate(params[:password])
#         session[:user_id] = user.include
#         render json: user, status: :created
#     else 
#         render json: {error: {login: "Invalid username or password"}}, status: :unauthorized
#     end 
# end 

end

class UsersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    def index
        users = User.all
        render json: users
    end

    def show
        user = User.find_by(id: session[:user_id])
        if user
          render json: user
        else
          render json: { error: "Not authorized" }, status: :unauthorized
        end
    end 

    
    def create
        user = User.create!(user_params)
        render json: user
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end


   def update
        user = User.find(params[:id])
        user.update(name: params[:name])
   end

    def destroy 
        user = User.find(params[:id]) 
        user.destroy
        head :no_content
    end


    private

    def user_params
       params.permit(:name)
    end

    def render_not_found_response
        render json: { error: "Hero not found" }, status: :not_found
      end
end

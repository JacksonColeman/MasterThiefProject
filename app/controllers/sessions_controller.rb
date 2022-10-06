class SessionsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
    skip_before_action :authorize, only: :create
    
    def login
        ## find user via params
        # byebug
        user = User.find_by!(username: params[:username])

        if user&.authenticate(params[:password])
            session[:user_id] = user.id
            render json: user, status: :ok
        else
            render json: {error: ["Invalid username or password"]}, status: :unprocessable_entity
        end
    end

    def destroy
        # byebug
        session.delete :user_id
        head :no_content
    end

    private

    def render_not_found_response()
        render json: {error: "User Not Found"}, status: :not_found
    end
end

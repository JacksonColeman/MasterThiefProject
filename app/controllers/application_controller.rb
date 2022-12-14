class ApplicationController < ActionController::API
    include ActionController::Cookies
    before_action :authorize

    # error handling adapted from Flatiron lecture notes
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response

    private

    def authorize
        session[:init] = true
        # byebug
        @current_user = User.find_by(id: session[:user_id])
        # render json: {errors: ["Not authorized"]}, status: :unauthorized unless @current_user
    end
    
    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors }, status: :unprocessable_entity
    end

    def render_not_found_response(invalid)
        render json: { errors: invalid }, status: :not_found
    end

end

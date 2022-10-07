class CommentsController < ApplicationController
        # POST "/comments"

        def index 
            render json: Comment.all
        end 

        def create
            comment = Comment.create(text: params[:text], user_id: session[:user_id])
            render json: user, status: :created
        end

end

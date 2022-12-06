class CommentsController < ApplicationController
    def create
        comment = Comment.create!(comment_params)
        render json: comment
    rescue ActiveRecord::RecordInvalid => e
        render json: { errors: e.record.errors.full_messages }, status: :unprocessable_entity
    end

    def destroy 
        comment = Comment.find(params[:id]) 
        comment.destroy
        head :no_content
    end
    
    private 
    
    def comment_params
        params.permit(:comment, :star_rating, :quote_id, :user_id)
    end 
end

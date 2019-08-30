class Api::V1::CommentsController < ApplicationController
     before_action :authorized, only: [:create]

     def index 
        @comments = Comment.all
     end

     def show
        @comment = Comment.find(params[:id])
     end

     def create
        @comment = Comment.create(comment_params)
        if @comment.valid?
            render json: { comment: CommentSerializer.new(@comment) }, status: :created
        else
            render json: { error: "Failed to create comment" }, status: :not_acceptable
        end
     end

     private
     def comment_params
        params.require(:comment).permit(:forum_id, :user_id, :content)
     end
end

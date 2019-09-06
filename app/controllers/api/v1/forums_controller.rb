class Api::V1::ForumsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]
    
    def index
        render json: { forums: Forum.all }
    end

    def show
        @forum = Forum.find(params[:id])
    end

    def create
        @forum = Forum.create(forum_params)
        if @forum.valid?
            render json: { forum: ForumSerializer.new(@forum) }, status: :created
        else
            render json:{ error: "Failed to create forum" }, status: :not_acceptable
        end

    end


    private
    def forum_params
        params.require(:forum).permit(:title, :user_id)
    end
end

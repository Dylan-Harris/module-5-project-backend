class Api::V1::RelationshipsController < ApplicationController
    before_action :authorized, only: [:create, :destroy]

    def index
        render json: { users: Relationship.all }
      end

    def create 
        x = current_user.friends.include?(friend_id: params[:friend_id])
        if x == false
            # @relationship = current_user.relationships.build(:friend_id => params[:friend_id])
            @relationship = Relationship.create(relationship_params)
            if @relationship.valid?
                render json: { relationship: RelationshipSerializer.new(@relationship), message: "Added Friend"  }, status: :created
                # render json: { message: "Added Friend" }, status: :accepted
            else
                render json: { error: "Unable to add friend" }, status: :not_acceptable
            end
        else
            return
            render json: { error: "Already added friend" }, status: :not_acceptable
        end
    end

    private
    def relationship_params 
        params.require(:relationship).permit(:user_id, :friend_id)
    end
end

class Api::V1::WishlistsController < ApplicationController
    before_action :authorized, only: [:create, :destroy, :update]

    def index
        @wishlist = Wishlist.all
          render json: @wishlist.to_json(:include => :game)
    end

    def create
        @wishlist = Wishlist.create(wishlist_params)
        if @wishlist.valid?
            render json: { wishlist: WishlistSerializer.new(@wishlist) }, status: :created
        else
            render json: { error: "Failed to create Wishlist" }, status: :not_acceptable
        end
    end

    def edit
        @wishlist = User.find(wishlist.id)
      end
    
      def update
        @wishlist = Wishlist.find(params[:id])
        @wishlist.update(wishlist_params)
        if @wishlist.valid?
          render json: { wishlist: @wishlist }, status: :accepted
        else
          render json: { error: 'Failed to add game' }, status: :not_acceptable
        end
      end

    def destroy
        @wishlist = Wishlist.find_by(id: params[:id])
        @wishlist.destroy
        render json: { message: "Game removed" }, status: :accepted
    end

    private
    def wishlist_params
        params.require(:wishlist).permit(:user_id, :game_id)
    end
end

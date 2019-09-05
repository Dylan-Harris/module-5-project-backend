class Api::V1::GamesController < ApplicationController
    skip_before_action :authorized, only: [:index]
    
    def index
        render json: { games: Game.all }
    end

    def show
        
    end
end

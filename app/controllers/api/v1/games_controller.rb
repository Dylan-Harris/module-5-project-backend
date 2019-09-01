class Api::V1::GamesController < ApplicationController
    
    
    def index
        render json: { games: Game.all }
    end

    def show
        
    end
end

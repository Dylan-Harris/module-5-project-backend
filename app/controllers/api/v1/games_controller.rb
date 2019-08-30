class Api::V1::GamesController < ApplicationController
    
    
    def index
        @games = Game.all
    end

    def show
        @game = Gmae.find
    end
end

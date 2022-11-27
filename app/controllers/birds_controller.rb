class BirdsController < ApplicationController

    #GET /birds --> ALL birds
    def index
        render json: Bird.all, status: :ok
    end

    #GET /birds/:id --> ONE bird
    def show
        bird = Bird.find_by(id:params[:id])
        if bird
            render json: bird
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end

end

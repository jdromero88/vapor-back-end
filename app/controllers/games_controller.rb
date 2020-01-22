class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games.to_json(serialized_data)
  end
  def create
    # byebug
    game = Game.find_by(api_id: params[:api_id])
    if game
      render json: game.to_json(serialized_data)
    else
      game = Game.create(games_strong_params)
      render json: game.to_json(serialized_data)
    end
  end
  def show
    game = Game.find(params[:id])
    render json: game.to_json(serialized_data)
  end
  private
    def serialized_data
      {:except => [:created_at, :updated_at]}
    end
    def games_strong_params
      params.require(:game).permit(:slug,
        :name,
        :description,
        :rating,
        :release,
        :background_image,
        :api_id,
        :clip ,
        :platforms ,
        :genres,
        :publisher
      )
    end
end

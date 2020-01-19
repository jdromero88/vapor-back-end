class UserGamesController < ApplicationController
  def index
    user_games = UserGame.all
    render json: user_games.to_json(serialized_data)
  end
  def show
    user_game = UserGame.find(params[:id])
    render json: user_game.to_json(serialized_data)
  end
  def create
    user_game = UserGame.create(finished: params[:finished], wishlist: params[:wishlist])
    render json: user_game.to_json(serialized_data)
  end
  def edit
    user_game = UserGame.find(params[:id])
  end
  def update

  end
  def destroy
    user_game = UserGame.find(params[:id])
    user_game.destroy
  end

  def serialized_data
    {:except => [:updated_at, :created_at ]}
  end
end

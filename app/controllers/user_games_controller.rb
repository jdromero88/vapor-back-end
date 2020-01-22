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
    # byebug
    user_game = UserGame.find_by(game_id: params[:game_id])
    if user_game
      render json: user_game.to_json(serialized_data)
    else
      user_game = UserGame.create(user_id: params[:user_id],
        game_id: params[:game_id],
        finished: params[:finished],
        wishlist: params[:wishlist]
      )
      render json: user_game.to_json(serialized_data)
    end
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
    {:except => [:finished, :wishlist, :updated_at, :created_at ]}
  end
end

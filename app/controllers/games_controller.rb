class GamesController < ApplicationController
  def index
    games = Game.all
    render json: games.to_json(serialized_data)
  end
  def create
    game = Game.create(slug: params[:slug],
    name: params[:name],
    description: params[:description],
    rating: params[:rating],
    release_dates: params[:release_dates],
    background_images: params[:background_images],
    clip: params[:clip],
    platforms: params[:platforms],
    genres: params[:genres],
    api_id: params[:api_id],
    publisher: params[:publisher]
    )
  end
  def show
    game = Game.find(params[:id])
    render json: game.to_json(serialized_data)
  end

  def serialized_data
    {:except => [:created_at, :updated_at]}
  end
end

class GamesController < ApplicationController

  before_action :move_to_index, except: :index

  def index
    @games = Game.order("created_at DESC").page(params[:page]).per(5)
  end

  def new
  end

  def create
    Game.create(title: game_params[:title], image: game_params[:image], text: game_params[:text], user_id: current_user.id)
  end
  
  def edit
    @game = Game.find(params[:id])
  end
  
  def update
    game = Game.find(params[:id])
    if game.user_id == current_user.id
      game.update(game_params)
    end
  end
  
  def destroy
    game = Game.find(params[:id])
    game.destroy if game.user.id == current_user.id
  end

  private
  def game_params
    params.permit(:title, :image, :text)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end
end
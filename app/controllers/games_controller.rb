class GamesController < ApplicationController
  def index
    @games = Game.all
    render :index
  end

  def new
    @game = Game.new
    render :new
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to game_path(@game)
    else
    render :new
    end
  end

  def show
    @games = Game.all
  end

  private
  def game_params
    params.require(:game).permit(:team_one, :team_two)
  end
end

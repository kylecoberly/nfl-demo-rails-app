class PlayersController < ApplicationController
  def index
    if params[:search_term]
      @players = Player.where("last_name LIKE ?", "%#{params[:search_term]}%")
    else
      @players = Player.all
    end
  end

  def show
    @player = Player.find(params[:id])
  end

  def new
    @player = Player.new
    @teams = Team.all
  end

  def create
    @player = Player.create(player_params)

    if @player.errors.any?
      @teams = Team.all
      render :new
    else
      redirect_to players_path
    end
  end

  private

  def player_params
    params.require(:player).permit(:first_name, :last_name, :position, :team_id)
  end
end

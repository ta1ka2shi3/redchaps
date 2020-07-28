class GamesController < ApplicationController
  def index
    @games = Game.all
  end

  def new
    @game = Game.new
    @game.build_address
  end

  def create
    @game = Game.new(game_params)
    if @game.save
      redirect_to root_path
    else
      render action: :new
    end
  end

  def show

  end


private

def game_params
  params.require(:game).permit(:game_name, :gamestart_datetime, :gameend_datetime, :gameball, :cost, :referee, :important_point, address_attributes:[:id, :baseball_park, :prefectures, :municipality, :building, :house_number]).merge(user_id: current_user.id)
end

end

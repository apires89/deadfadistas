class DeadPlayersController < ApplicationController
  def index
  end

  def show
  end

  def top
    @dead_players = DeadPlayer.order(fame: :asc).take(6)
  end

  def publish
    @dead_player = DeadPlayer.find(params[:id])
    @dead_player.update(publish: "published")
  end

  def unpublish
  end
end

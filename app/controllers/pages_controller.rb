class PagesController < ApplicationController
  def home
    @dead_players = DeadPlayer.where(state: "published").order(first_name: :desc)
  end
end

class AddStateToDeadPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :dead_players, :state, :string, default: "unpublished", null: false
  end
end

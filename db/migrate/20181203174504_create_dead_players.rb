class CreateDeadPlayers < ActiveRecord::Migration[5.2]
  def change
    create_table :dead_players do |t|
      t.string :first_name
      t.string :last_name
      t.string :photo_url
      t.string :fame

      t.timestamps
    end
  end
end

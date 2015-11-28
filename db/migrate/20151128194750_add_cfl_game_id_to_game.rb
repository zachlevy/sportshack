class AddCflGameIdToGame < ActiveRecord::Migration
  def change
    add_column :games, :cfl_game_id, :integer
  end
end

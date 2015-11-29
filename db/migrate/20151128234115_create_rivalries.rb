class CreateRivalries < ActiveRecord::Migration
  def change
    create_table :rivalries do |t|
      t.references :away_team, references: :teams
      t.references :home_team, references: :teams
      t.references :away_player, references: :rosters
      t.references :home_player, references: :rosters

      t.timestamps null: false
    end
  end
end

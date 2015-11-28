class CreatePlays < ActiveRecord::Migration
  def change
    create_table :plays do |t|
      t.integer :game_id
      t.integer :cfl_play_id
      t.integer :quarter
      t.string :time
      t.integer :down
      t.integer :distance
      t.integer :away_score_before
      t.integer :away_score_after
      t.integer :home_score_before
      t.integer :home_score_after
      t.string :yardline
      t.string :end_yardline
      t.integer :end_possession_id
      t.integer :continuation
      t.integer :play_type_id
      t.references :player1, references: :rosters
      t.references :player2, references: :rosters
      t.references :player3, references: :rosters
      t.integer :tackle1_id
      t.string :direction
      t.integer :yards
      t.integer :review
      t.integer :review_team_id
      t.integer :penalty_id
      t.string :details
      t.string :name

      t.timestamps null: false
    end
  end
end

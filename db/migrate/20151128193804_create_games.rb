class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :sked_id
      t.string :week_name
      t.string :week_short
      t.integer :week_id
      t.string :game_num
      t.datetime :game_date
      t.integer :date_tbd
      t.integer :time_tbd
      t.string :game_status
      t.string :away_team
      t.string :away_initial
      t.integer :away_score1
      t.integer :away_score2
      t.integer :away_score3
      t.integer :away_score4
      t.integer :away_scoreOT
      t.references :away, references: :teams
      t.string :home_team
      t.string :home_initial
      t.integer :home_score1
      t.integer :home_score2
      t.integer :home_score3
      t.integer :home_score4
      t.integer :home_scoreOT
      t.references :home, references: :teams
      t.integer :attendance
      t.integer :sold_out
      t.integer :is_visible
      t.string :culture

      t.timestamps null: false
    end
  end
end

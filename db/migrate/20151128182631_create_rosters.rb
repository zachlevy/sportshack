class CreateRosters < ActiveRecord::Migration
  def change
    create_table :rosters do |t|
      t.integer :stats_inc_id
      t.integer :team_id
      t.integer :playerstats_id
      t.string :first
      t.string :last
      t.integer :num
      t.integer :pos
      t.integer :import_status
      t.string :height
      t.string :weight
      t.date :birthdate
      t.string :birthplace
      t.string :college
      t.integer :yrsteam
      t.integer :yrsleague
      t.integer :ros_status

      t.timestamps null: false
    end
  end
end

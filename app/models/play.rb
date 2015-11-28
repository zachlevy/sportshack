class Play < ActiveRecord::Base
  belongs_to :roster1, :class_name => 'Roster', :foreign_key => 'player1_id'
  belongs_to :roster2, :class_name => 'Roster', :foreign_key => 'player2_id'
  belongs_to :roster3, :class_name => 'Roster', :foreign_key => 'player3_id'
  belongs_to :game

  def rosters
    players = []
    players << roster1 unless roster1.nil?
    players << roster2 unless roster2.nil?
    players << roster3 unless roster3.nil?
    players
  end

  # converts bad game ids to good ones :) 
  def update_game_id
    new_game = Game.find_by(cfl_game_id: game_id)
    new_game_id = new_game.id unless new_game.nil?
    self.update(game_id: new_game_id)
  end

end

class Roster < ActiveRecord::Base
  has_many :plays1, :class_name => 'Play', :foreign_key => 'player1_id'
  has_many :plays2, :class_name => 'Play', :foreign_key => 'player1_id'
  has_many :plays3, :class_name => 'Play', :foreign_key => 'player1_id'
  belongs_to :team, :class_name => 'Team', :foreign_key => 'team_id'
  has_many :away_games, through: :team, :source => :away_games
  has_many :home_games, through: :team, :source => :home_games

  def games
    home_games + away_games
  end

  def plays
    plays1 + plays2 + plays3
  end
end

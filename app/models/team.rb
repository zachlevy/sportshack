class Team < ActiveRecord::Base
  has_many :away_games, :class_name => "Game", :foreign_key => :away_id
  has_many :home_games, :class_name => "Game", :foreign_key => :home_id

  def games
    away_games + home_games
  end
end

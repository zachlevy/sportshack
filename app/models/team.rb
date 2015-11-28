class Team < ActiveRecord::Base
  has_many :away_games, :class_name => "Game", :foreign_key => :away_id
  has_many :home_games, :class_name => "Game", :foreign_key => :home_id
  has_many :away_plays, through: :away_games, :source => :plays
  has_many :home_plays, through: :home_games, :source => :plays

  def plays
    away_plays + home_plays
  end

  def games
    away_games + home_games
  end
end

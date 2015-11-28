class Roster < ActiveRecord::Base
  has_many :plays1, :class_name => 'Play', :foreign_key => 'player1_id'
  has_many :plays2, :class_name => 'Play', :foreign_key => 'player1_id'
  has_many :plays3, :class_name => 'Play', :foreign_key => 'player1_id'
  belongs_to :team, :class_name => 'Team', :foreign_key => 'team_id'

  def plays
    plays1 + plays2 + plays3
  end
end

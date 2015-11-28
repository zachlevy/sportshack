class Game < ActiveRecord::Base
  belongs_to :away_team, :class_name => 'Team', :foreign_key => 'away_id'
  belongs_to :home_team, :class_name => 'Team', :foreign_key => 'home_id'
end

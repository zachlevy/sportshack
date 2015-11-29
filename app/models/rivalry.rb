class Rivalry < ActiveRecord::Base
  belongs_to :away_team
  belongs_to :home_team
  belongs_to :away_player
  belongs_to :home_player
end

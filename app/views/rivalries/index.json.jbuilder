json.array!(@rivalries) do |rivalry|
  json.extract! rivalry, :id, :away_team_id, :home_team_id, :away_player_id, :home_player_id
  json.url rivalry_url(rivalry, format: :json)
end

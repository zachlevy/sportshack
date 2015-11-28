json.array!(@games) do |game|
  json.extract! game, :id, :sked_id, :week_name, :week_short, :week_id, :game_num, :game_date, :date_tbd, :time_tbd, :game_status, :away_team, :away_initial, :away_score1, :away_score2, :away_score3, :away_score4, :away_scoreOT, :away_id, :home_team, :home_initial, :home_score1, :home_score2, :home_score3, :home_score4, :home_scoreOT, :home_id, :attendance, :sold_out, :is_visible, :culture
  json.url game_url(game, format: :json)
end
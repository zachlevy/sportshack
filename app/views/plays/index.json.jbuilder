json.array!(@plays) do |play|
  json.extract! play, :id, :game_id, :play_id, :quarter, :time, :down, :distance, :away_score_before, :away_score_after, :home_score_before, :home_score_after, :yardline, :end_yardline, :end_possession_id, :continuation, :play_type_id, :player1_id, :player2_id, :player3_id, :tackle1_id, :direction, :yards, :review, :review_team_id, :penalty_id, :details, :name
  json.url play_url(play, format: :json)
end

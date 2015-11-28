json.array!(@rosters) do |roster|
  json.extract! roster, :id, :stats_inc_id, :team_id, :playerstats_id, :first, :last, :num, :pos, :import_status, :height, :weight, :birthdate, :birthplace, :college, :yrsteam, :yrsleague, :ros_status
  json.url roster_url(roster, format: :json)
end

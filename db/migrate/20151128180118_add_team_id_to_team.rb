class AddTeamIdToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :team_id, :string
    add_column :teams, :integer, :string
  end
end

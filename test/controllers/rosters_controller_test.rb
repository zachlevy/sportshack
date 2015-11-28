require 'test_helper'

class RostersControllerTest < ActionController::TestCase
  setup do
    @roster = rosters(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rosters)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create roster" do
    assert_difference('Roster.count') do
      post :create, roster: { birthdate: @roster.birthdate, birthplace: @roster.birthplace, college: @roster.college, first: @roster.first, height: @roster.height, import_status: @roster.import_status, last: @roster.last, num: @roster.num, playerstats_id: @roster.playerstats_id, pos: @roster.pos, ros_status: @roster.ros_status, stats_inc_id: @roster.stats_inc_id, team_id: @roster.team_id, weight: @roster.weight, yrsleague: @roster.yrsleague, yrsteam: @roster.yrsteam }
    end

    assert_redirected_to roster_path(assigns(:roster))
  end

  test "should show roster" do
    get :show, id: @roster
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @roster
    assert_response :success
  end

  test "should update roster" do
    patch :update, id: @roster, roster: { birthdate: @roster.birthdate, birthplace: @roster.birthplace, college: @roster.college, first: @roster.first, height: @roster.height, import_status: @roster.import_status, last: @roster.last, num: @roster.num, playerstats_id: @roster.playerstats_id, pos: @roster.pos, ros_status: @roster.ros_status, stats_inc_id: @roster.stats_inc_id, team_id: @roster.team_id, weight: @roster.weight, yrsleague: @roster.yrsleague, yrsteam: @roster.yrsteam }
    assert_redirected_to roster_path(assigns(:roster))
  end

  test "should destroy roster" do
    assert_difference('Roster.count', -1) do
      delete :destroy, id: @roster
    end

    assert_redirected_to rosters_path
  end
end

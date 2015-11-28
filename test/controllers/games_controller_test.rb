require 'test_helper'

class GamesControllerTest < ActionController::TestCase
  setup do
    @game = games(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:games)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create game" do
    assert_difference('Game.count') do
      post :create, game: { attendance: @game.attendance, away_id: @game.away_id, away_initial: @game.away_initial, away_score1: @game.away_score1, away_score2: @game.away_score2, away_score3: @game.away_score3, away_score4: @game.away_score4, away_scoreOT: @game.away_scoreOT, away_team: @game.away_team, culture: @game.culture, date_tbd: @game.date_tbd, game_date: @game.game_date, game_num: @game.game_num, game_status: @game.game_status, home_id: @game.home_id, home_initial: @game.home_initial, home_score1: @game.home_score1, home_score2: @game.home_score2, home_score3: @game.home_score3, home_score4: @game.home_score4, home_scoreOT: @game.home_scoreOT, home_team: @game.home_team, is_visible: @game.is_visible, sked_id: @game.sked_id, sold_out: @game.sold_out, time_tbd: @game.time_tbd, week_id: @game.week_id, week_name: @game.week_name, week_short: @game.week_short }
    end

    assert_redirected_to game_path(assigns(:game))
  end

  test "should show game" do
    get :show, id: @game
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @game
    assert_response :success
  end

  test "should update game" do
    patch :update, id: @game, game: { attendance: @game.attendance, away_id: @game.away_id, away_initial: @game.away_initial, away_score1: @game.away_score1, away_score2: @game.away_score2, away_score3: @game.away_score3, away_score4: @game.away_score4, away_scoreOT: @game.away_scoreOT, away_team: @game.away_team, culture: @game.culture, date_tbd: @game.date_tbd, game_date: @game.game_date, game_num: @game.game_num, game_status: @game.game_status, home_id: @game.home_id, home_initial: @game.home_initial, home_score1: @game.home_score1, home_score2: @game.home_score2, home_score3: @game.home_score3, home_score4: @game.home_score4, home_scoreOT: @game.home_scoreOT, home_team: @game.home_team, is_visible: @game.is_visible, sked_id: @game.sked_id, sold_out: @game.sold_out, time_tbd: @game.time_tbd, week_id: @game.week_id, week_name: @game.week_name, week_short: @game.week_short }
    assert_redirected_to game_path(assigns(:game))
  end

  test "should destroy game" do
    assert_difference('Game.count', -1) do
      delete :destroy, id: @game
    end

    assert_redirected_to games_path
  end
end

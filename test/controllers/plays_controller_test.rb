require 'test_helper'

class PlaysControllerTest < ActionController::TestCase
  setup do
    @play = plays(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:plays)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create play" do
    assert_difference('Play.count') do
      post :create, play: { away_score_after: @play.away_score_after, away_score_before: @play.away_score_before, continuation: @play.continuation, details: @play.details, direction: @play.direction, distance: @play.distance, down: @play.down, end_possession_id: @play.end_possession_id, end_yardline: @play.end_yardline, game_id: @play.game_id, home_score_after: @play.home_score_after, home_score_before: @play.home_score_before, name: @play.name, penalty_id: @play.penalty_id, play_id: @play.play_id, play_type_id: @play.play_type_id, player1_id: @play.player1_id, player2_id: @play.player2_id, player3_id: @play.player3_id, quarter: @play.quarter, review: @play.review, review_team_id: @play.review_team_id, tackle1_id: @play.tackle1_id, time: @play.time, yardline: @play.yardline, yards: @play.yards }
    end

    assert_redirected_to play_path(assigns(:play))
  end

  test "should show play" do
    get :show, id: @play
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @play
    assert_response :success
  end

  test "should update play" do
    patch :update, id: @play, play: { away_score_after: @play.away_score_after, away_score_before: @play.away_score_before, continuation: @play.continuation, details: @play.details, direction: @play.direction, distance: @play.distance, down: @play.down, end_possession_id: @play.end_possession_id, end_yardline: @play.end_yardline, game_id: @play.game_id, home_score_after: @play.home_score_after, home_score_before: @play.home_score_before, name: @play.name, penalty_id: @play.penalty_id, play_id: @play.play_id, play_type_id: @play.play_type_id, player1_id: @play.player1_id, player2_id: @play.player2_id, player3_id: @play.player3_id, quarter: @play.quarter, review: @play.review, review_team_id: @play.review_team_id, tackle1_id: @play.tackle1_id, time: @play.time, yardline: @play.yardline, yards: @play.yards }
    assert_redirected_to play_path(assigns(:play))
  end

  test "should destroy play" do
    assert_difference('Play.count', -1) do
      delete :destroy, id: @play
    end

    assert_redirected_to plays_path
  end
end

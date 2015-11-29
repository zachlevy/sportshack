require 'test_helper'

class RivalriesControllerTest < ActionController::TestCase
  setup do
    @rivalry = rivalries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:rivalries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create rivalry" do
    assert_difference('Rivalry.count') do
      post :create, rivalry: { away_player_id: @rivalry.away_player_id, away_team_id: @rivalry.away_team_id, home_player_id: @rivalry.home_player_id, home_team_id: @rivalry.home_team_id }
    end

    assert_redirected_to rivalry_path(assigns(:rivalry))
  end

  test "should show rivalry" do
    get :show, id: @rivalry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @rivalry
    assert_response :success
  end

  test "should update rivalry" do
    patch :update, id: @rivalry, rivalry: { away_player_id: @rivalry.away_player_id, away_team_id: @rivalry.away_team_id, home_player_id: @rivalry.home_player_id, home_team_id: @rivalry.home_team_id }
    assert_redirected_to rivalry_path(assigns(:rivalry))
  end

  test "should destroy rivalry" do
    assert_difference('Rivalry.count', -1) do
      delete :destroy, id: @rivalry
    end

    assert_redirected_to rivalries_path
  end
end

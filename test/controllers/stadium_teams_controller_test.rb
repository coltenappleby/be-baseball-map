require "test_helper"

class StadiumTeamsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stadium_team = stadium_teams(:one)
  end

  test "should get index" do
    get stadium_teams_url, as: :json
    assert_response :success
  end

  test "should create stadium_team" do
    assert_difference('StadiumTeam.count') do
      post stadium_teams_url, params: { stadium_team: { stadium_id: @stadium_team.stadium_id, team_id: @stadium_team.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stadium_team" do
    get stadium_team_url(@stadium_team), as: :json
    assert_response :success
  end

  test "should update stadium_team" do
    patch stadium_team_url(@stadium_team), params: { stadium_team: { stadium_id: @stadium_team.stadium_id, team_id: @stadium_team.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy stadium_team" do
    assert_difference('StadiumTeam.count', -1) do
      delete stadium_team_url(@stadium_team), as: :json
    end

    assert_response 204
  end
end

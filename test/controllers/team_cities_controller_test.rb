require "test_helper"

class TeamCitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @team_city = team_cities(:one)
  end

  test "should get index" do
    get team_cities_url, as: :json
    assert_response :success
  end

  test "should create team_city" do
    assert_difference('TeamCity.count') do
      post team_cities_url, params: { team_city: { city_id: @team_city.city_id, team_id: @team_city.team_id } }, as: :json
    end

    assert_response 201
  end

  test "should show team_city" do
    get team_city_url(@team_city), as: :json
    assert_response :success
  end

  test "should update team_city" do
    patch team_city_url(@team_city), params: { team_city: { city_id: @team_city.city_id, team_id: @team_city.team_id } }, as: :json
    assert_response 200
  end

  test "should destroy team_city" do
    assert_difference('TeamCity.count', -1) do
      delete team_city_url(@team_city), as: :json
    end

    assert_response 204
  end
end

require "test_helper"

class StadiaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stadium = stadia(:one)
  end

  test "should get index" do
    get stadia_url, as: :json
    assert_response :success
  end

  test "should create stadium" do
    assert_difference('Stadium.count') do
      post stadia_url, params: { stadium: { address: @stadium.address, city_id: @stadium.city_id, latitude: @stadium.latitude, longitude: @stadium.longitude, wikipedia: @stadium.wikipedia, year_built: @stadium.year_built } }, as: :json
    end

    assert_response 201
  end

  test "should show stadium" do
    get stadium_url(@stadium), as: :json
    assert_response :success
  end

  test "should update stadium" do
    patch stadium_url(@stadium), params: { stadium: { address: @stadium.address, city_id: @stadium.city_id, latitude: @stadium.latitude, longitude: @stadium.longitude, wikipedia: @stadium.wikipedia, year_built: @stadium.year_built } }, as: :json
    assert_response 200
  end

  test "should destroy stadium" do
    assert_difference('Stadium.count', -1) do
      delete stadium_url(@stadium), as: :json
    end

    assert_response 204
  end
end

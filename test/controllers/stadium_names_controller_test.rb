require "test_helper"

class StadiumNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stadium_name = stadium_names(:one)
  end

  test "should get index" do
    get stadium_names_url, as: :json
    assert_response :success
  end

  test "should create stadium_name" do
    assert_difference('StadiumName.count') do
      post stadium_names_url, params: { stadium_name: { stadium_id: @stadium_name.stadium_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stadium_name" do
    get stadium_name_url(@stadium_name), as: :json
    assert_response :success
  end

  test "should update stadium_name" do
    patch stadium_name_url(@stadium_name), params: { stadium_name: { stadium_id: @stadium_name.stadium_id } }, as: :json
    assert_response 200
  end

  test "should destroy stadium_name" do
    assert_difference('StadiumName.count', -1) do
      delete stadium_name_url(@stadium_name), as: :json
    end

    assert_response 204
  end
end

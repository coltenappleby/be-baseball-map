require "test_helper"

class CapacitiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capacity = capacities(:one)
  end

  test "should get index" do
    get capacities_url, as: :json
    assert_response :success
  end

  test "should create capacity" do
    assert_difference('Capacity.count') do
      post capacities_url, params: { capacity: { capacity: @capacity.capacity, stadium_id: @capacity.stadium_id, year_end: @capacity.year_end, year_start: @capacity.year_start } }, as: :json
    end

    assert_response 201
  end

  test "should show capacity" do
    get capacity_url(@capacity), as: :json
    assert_response :success
  end

  test "should update capacity" do
    patch capacity_url(@capacity), params: { capacity: { capacity: @capacity.capacity, stadium_id: @capacity.stadium_id, year_end: @capacity.year_end, year_start: @capacity.year_start } }, as: :json
    assert_response 200
  end

  test "should destroy capacity" do
    assert_difference('Capacity.count', -1) do
      delete capacity_url(@capacity), as: :json
    end

    assert_response 204
  end
end

require 'test_helper'

class WorkoutResultsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_result = workout_results(:one)
  end

  test "should get index" do
    get workout_results_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_result_url
    assert_response :success
  end

  test "should create workout_result" do
    assert_difference('WorkoutResult.count') do
      post workout_results_url, params: { workout_result: { value: @workout_result.value, workout_id: @workout_result.workout_id } }
    end

    assert_redirected_to workout_result_url(WorkoutResult.last)
  end

  test "should show workout_result" do
    get workout_result_url(@workout_result)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_result_url(@workout_result)
    assert_response :success
  end

  test "should update workout_result" do
    patch workout_result_url(@workout_result), params: { workout_result: { value: @workout_result.value, workout_id: @workout_result.workout_id } }
    assert_redirected_to workout_result_url(@workout_result)
  end

  test "should destroy workout_result" do
    assert_difference('WorkoutResult.count', -1) do
      delete workout_result_url(@workout_result)
    end

    assert_redirected_to workout_results_url
  end
end

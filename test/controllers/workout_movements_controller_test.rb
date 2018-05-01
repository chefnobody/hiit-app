require 'test_helper'

class WorkoutMovementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @workout_movement = workout_movements(:one)
  end

  test "should get index" do
    get workout_movements_url
    assert_response :success
  end

  test "should get new" do
    get new_workout_movement_url
    assert_response :success
  end

  test "should create workout_movement" do
    assert_difference('WorkoutMovement.count') do
      post workout_movements_url, params: { workout_movement: {  } }
    end

    assert_redirected_to workout_movement_url(WorkoutMovement.last)
  end

  test "should show workout_movement" do
    get workout_movement_url(@workout_movement)
    assert_response :success
  end

  test "should get edit" do
    get edit_workout_movement_url(@workout_movement)
    assert_response :success
  end

  test "should update workout_movement" do
    patch workout_movement_url(@workout_movement), params: { workout_movement: {  } }
    assert_redirected_to workout_movement_url(@workout_movement)
  end

  test "should destroy workout_movement" do
    assert_difference('WorkoutMovement.count', -1) do
      delete workout_movement_url(@workout_movement)
    end

    assert_redirected_to workout_movements_url
  end
end

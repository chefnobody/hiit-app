require 'test_helper'

class MovementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @movement_type = movement_types(:one)
  end

  test "should get index" do
    get movement_types_url
    assert_response :success
  end

  test "should get new" do
    get new_movement_type_url
    assert_response :success
  end

  test "should create movement_type" do
    assert_difference('MovementType.count') do
      post movement_types_url, params: { movement_type: { name: @movement_type.name } }
    end

    assert_redirected_to movement_type_url(MovementType.last)
  end

  test "should show movement_type" do
    get movement_type_url(@movement_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_movement_type_url(@movement_type)
    assert_response :success
  end

  test "should update movement_type" do
    patch movement_type_url(@movement_type), params: { movement_type: { name: @movement_type.name } }
    assert_redirected_to movement_type_url(@movement_type)
  end

  test "should destroy movement_type" do
    assert_difference('MovementType.count', -1) do
      delete movement_type_url(@movement_type)
    end

    assert_redirected_to movement_types_url
  end
end

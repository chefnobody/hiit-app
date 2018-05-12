require 'test_helper'

class MeasurementTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @measurement_type = measurement_types(:one)
  end

  test "should get index" do
    get measurement_types_url
    assert_response :success
  end

  test "should get new" do
    get new_measurement_type_url
    assert_response :success
  end

  test "should create measurement_type" do
    assert_difference('MeasurementType.count') do
      post measurement_types_url, params: { measurement_type: { name: @measurement_type.name, value: @measurement_type.value } }
    end

    assert_redirected_to measurement_type_url(MeasurementType.last)
  end

  test "should show measurement_type" do
    get measurement_type_url(@measurement_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_measurement_type_url(@measurement_type)
    assert_response :success
  end

  test "should update measurement_type" do
    patch measurement_type_url(@measurement_type), params: { measurement_type: { name: @measurement_type.name, value: @measurement_type.value } }
    assert_redirected_to measurement_type_url(@measurement_type)
  end

  test "should destroy measurement_type" do
    assert_difference('MeasurementType.count', -1) do
      delete measurement_type_url(@measurement_type)
    end

    assert_redirected_to measurement_types_url
  end
end

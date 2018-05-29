require 'test_helper'

class ScoreTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @score_type = score_types(:one)
  end

  test "should get index" do
    get score_types_url
    assert_response :success
  end

  test "should get new" do
    get new_score_type_url
    assert_response :success
  end

  test "should create score_type" do
    assert_difference('ScoreType.count') do
      post score_types_url, params: { score_type: { name: @score_type.name } }
    end

    assert_redirected_to score_type_url(ScoreType.last)
  end

  test "should show score_type" do
    get score_type_url(@score_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_score_type_url(@score_type)
    assert_response :success
  end

  test "should update score_type" do
    patch score_type_url(@score_type), params: { score_type: { name: @score_type.name } }
    assert_redirected_to score_type_url(@score_type)
  end

  test "should destroy score_type" do
    assert_difference('ScoreType.count', -1) do
      delete score_type_url(@score_type)
    end

    assert_redirected_to score_types_url
  end
end

require 'test_helper'

class AtheletesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @athelete = atheletes(:one)
  end

  test "should get index" do
    get atheletes_url
    assert_response :success
  end

  test "should get new" do
    get new_athelete_url
    assert_response :success
  end

  test "should create athelete" do
    assert_difference('Athelete.count') do
      post atheletes_url, params: { athelete: { age: @athelete.age, first_name: @athelete.first_name, last_name: @athelete.last_name } }
    end

    assert_redirected_to athelete_url(Athelete.last)
  end

  test "should show athelete" do
    get athelete_url(@athelete)
    assert_response :success
  end

  test "should get edit" do
    get edit_athelete_url(@athelete)
    assert_response :success
  end

  test "should update athelete" do
    patch athelete_url(@athelete), params: { athelete: { age: @athelete.age, first_name: @athelete.first_name, last_name: @athelete.last_name } }
    assert_redirected_to athelete_url(@athelete)
  end

  test "should destroy athelete" do
    assert_difference('Athelete.count', -1) do
      delete athelete_url(@athelete)
    end

    assert_redirected_to atheletes_url
  end
end

require 'test_helper'

class StepEightsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_eight = step_eights(:one)
  end

  test "should get index" do
    get step_eights_url
    assert_response :success
  end

  test "should get new" do
    get new_step_eight_url
    assert_response :success
  end

  test "should create step_eight" do
    assert_difference('StepEight.count') do
      post step_eights_url, params: { step_eight: { completado: @step_eight.completado, fin: @step_eight.fin, inicio: @step_eight.inicio, pedido: @step_eight.pedido, user_id: @step_eight.user_id } }
    end

    assert_redirected_to step_eight_url(StepEight.last)
  end

  test "should show step_eight" do
    get step_eight_url(@step_eight)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_eight_url(@step_eight)
    assert_response :success
  end

  test "should update step_eight" do
    patch step_eight_url(@step_eight), params: { step_eight: { completado: @step_eight.completado, fin: @step_eight.fin, inicio: @step_eight.inicio, pedido: @step_eight.pedido, user_id: @step_eight.user_id } }
    assert_redirected_to step_eight_url(@step_eight)
  end

  test "should destroy step_eight" do
    assert_difference('StepEight.count', -1) do
      delete step_eight_url(@step_eight)
    end

    assert_redirected_to step_eights_url
  end
end

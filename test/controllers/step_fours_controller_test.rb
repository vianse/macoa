require 'test_helper'

class StepFoursControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_four = step_fours(:one)
  end

  test "should get index" do
    get step_fours_url
    assert_response :success
  end

  test "should get new" do
    get new_step_four_url
    assert_response :success
  end

  test "should create step_four" do
    assert_difference('StepFour.count') do
      post step_fours_url, params: { step_four: { accesorio: @step_four.accesorio, completado: @step_four.completado, fin: @step_four.fin, inicio: @step_four.inicio, pedido: @step_four.pedido, user_id: @step_four.user_id } }
    end

    assert_redirected_to step_four_url(StepFour.last)
  end

  test "should show step_four" do
    get step_four_url(@step_four)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_four_url(@step_four)
    assert_response :success
  end

  test "should update step_four" do
    patch step_four_url(@step_four), params: { step_four: { accesorio: @step_four.accesorio, completado: @step_four.completado, fin: @step_four.fin, inicio: @step_four.inicio, pedido: @step_four.pedido, user_id: @step_four.user_id } }
    assert_redirected_to step_four_url(@step_four)
  end

  test "should destroy step_four" do
    assert_difference('StepFour.count', -1) do
      delete step_four_url(@step_four)
    end

    assert_redirected_to step_fours_url
  end
end

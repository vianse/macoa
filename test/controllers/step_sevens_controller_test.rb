require 'test_helper'

class StepSevensControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_seven = step_sevens(:one)
  end

  test "should get index" do
    get step_sevens_url
    assert_response :success
  end

  test "should get new" do
    get new_step_seven_url
    assert_response :success
  end

  test "should create step_seven" do
    assert_difference('StepSeven.count') do
      post step_sevens_url, params: { step_seven: { completado: @step_seven.completado, fechaRevisionPrevia: @step_seven.fechaRevisionPrevia, pedido: @step_seven.pedido, user_id: @step_seven.user_id } }
    end

    assert_redirected_to step_seven_url(StepSeven.last)
  end

  test "should show step_seven" do
    get step_seven_url(@step_seven)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_seven_url(@step_seven)
    assert_response :success
  end

  test "should update step_seven" do
    patch step_seven_url(@step_seven), params: { step_seven: { completado: @step_seven.completado, fechaRevisionPrevia: @step_seven.fechaRevisionPrevia, pedido: @step_seven.pedido, user_id: @step_seven.user_id } }
    assert_redirected_to step_seven_url(@step_seven)
  end

  test "should destroy step_seven" do
    assert_difference('StepSeven.count', -1) do
      delete step_seven_url(@step_seven)
    end

    assert_redirected_to step_sevens_url
  end
end

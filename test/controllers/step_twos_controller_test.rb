require 'test_helper'

class StepTwosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_two = step_twos(:one)
  end

  test "should get index" do
    get step_twos_url
    assert_response :success
  end

  test "should get new" do
    get new_step_two_url
    assert_response :success
  end

  test "should create step_two" do
    assert_difference('StepTwo.count') do
      post step_twos_url, params: { step_two: { completado: @step_two.completado, desembolso: @step_two.desembolso, fecha: @step_two.fecha, hora: @step_two.hora, observaciones: @step_two.observaciones, pedido: @step_two.pedido, user_id: @step_two.user_id } }
    end

    assert_redirected_to step_two_url(StepTwo.last)
  end

  test "should show step_two" do
    get step_two_url(@step_two)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_two_url(@step_two)
    assert_response :success
  end

  test "should update step_two" do
    patch step_two_url(@step_two), params: { step_two: { completado: @step_two.completado, desembolso: @step_two.desembolso, fecha: @step_two.fecha, hora: @step_two.hora, observaciones: @step_two.observaciones, pedido: @step_two.pedido, user_id: @step_two.user_id } }
    assert_redirected_to step_two_url(@step_two)
  end

  test "should destroy step_two" do
    assert_difference('StepTwo.count', -1) do
      delete step_two_url(@step_two)
    end

    assert_redirected_to step_twos_url
  end
end

require 'test_helper'

class StepSixesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_six = step_sixes(:one)
  end

  test "should get index" do
    get step_sixes_url
    assert_response :success
  end

  test "should get new" do
    get new_step_six_url
    assert_response :success
  end

  test "should create step_six" do
    assert_difference('StepSix.count') do
      post step_sixes_url, params: { step_six: { completado: @step_six.completado, observaciones: @step_six.observaciones, pedido: @step_six.pedido, revisionPagos: @step_six.revisionPagos, user_id: @step_six.user_id } }
    end

    assert_redirected_to step_six_url(StepSix.last)
  end

  test "should show step_six" do
    get step_six_url(@step_six)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_six_url(@step_six)
    assert_response :success
  end

  test "should update step_six" do
    patch step_six_url(@step_six), params: { step_six: { completado: @step_six.completado, observaciones: @step_six.observaciones, pedido: @step_six.pedido, revisionPagos: @step_six.revisionPagos, user_id: @step_six.user_id } }
    assert_redirected_to step_six_url(@step_six)
  end

  test "should destroy step_six" do
    assert_difference('StepSix.count', -1) do
      delete step_six_url(@step_six)
    end

    assert_redirected_to step_sixes_url
  end
end

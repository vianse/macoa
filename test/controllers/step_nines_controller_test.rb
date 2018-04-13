require 'test_helper'

class StepNinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_nine = step_nines(:one)
  end

  test "should get index" do
    get step_nines_url
    assert_response :success
  end

  test "should get new" do
    get new_step_nine_url
    assert_response :success
  end

  test "should create step_nine" do
    assert_difference('StepNine.count') do
      post step_nines_url, params: { step_nine: { auto: @step_nine.auto, completado: @step_nine.completado, factura: @step_nine.factura, pedido: @step_nine.pedido, sala: @step_nine.sala, user_id: @step_nine.user_id } }
    end

    assert_redirected_to step_nine_url(StepNine.last)
  end

  test "should show step_nine" do
    get step_nine_url(@step_nine)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_nine_url(@step_nine)
    assert_response :success
  end

  test "should update step_nine" do
    patch step_nine_url(@step_nine), params: { step_nine: { auto: @step_nine.auto, completado: @step_nine.completado, factura: @step_nine.factura, pedido: @step_nine.pedido, sala: @step_nine.sala, user_id: @step_nine.user_id } }
    assert_redirected_to step_nine_url(@step_nine)
  end

  test "should destroy step_nine" do
    assert_difference('StepNine.count', -1) do
      delete step_nine_url(@step_nine)
    end

    assert_redirected_to step_nines_url
  end
end

require 'test_helper'

class StepThreesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_three = step_threes(:one)
  end

  test "should get index" do
    get step_threes_url
    assert_response :success
  end

  test "should get new" do
    get new_step_three_url
    assert_response :success
  end

  test "should create step_three" do
    assert_difference('StepThree.count') do
      post step_threes_url, params: { step_three: { cliente: @step_three.cliente, completado: @step_three.completado, nombreVendedor: @step_three.nombreVendedor, notasCargo: @step_three.notasCargo, notasCredito: @step_three.notasCredito, numeroFactura: @step_three.numeroFactura, pedido: @step_three.pedido, user_id: @step_three.user_id, vehiculo: @step_three.vehiculo } }
    end

    assert_redirected_to step_three_url(StepThree.last)
  end

  test "should show step_three" do
    get step_three_url(@step_three)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_three_url(@step_three)
    assert_response :success
  end

  test "should update step_three" do
    patch step_three_url(@step_three), params: { step_three: { cliente: @step_three.cliente, completado: @step_three.completado, nombreVendedor: @step_three.nombreVendedor, notasCargo: @step_three.notasCargo, notasCredito: @step_three.notasCredito, numeroFactura: @step_three.numeroFactura, pedido: @step_three.pedido, user_id: @step_three.user_id, vehiculo: @step_three.vehiculo } }
    assert_redirected_to step_three_url(@step_three)
  end

  test "should destroy step_three" do
    assert_difference('StepThree.count', -1) do
      delete step_three_url(@step_three)
    end

    assert_redirected_to step_threes_url
  end
end

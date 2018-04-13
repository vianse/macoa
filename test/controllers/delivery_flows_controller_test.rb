require 'test_helper'

class DeliveryFlowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @delivery_flow = delivery_flows(:one)
  end

  test "should get index" do
    get delivery_flows_url
    assert_response :success
  end

  test "should get new" do
    get new_delivery_flow_url
    assert_response :success
  end

  test "should create delivery_flow" do
    assert_difference('DeliveryFlow.count') do
      post delivery_flows_url, params: { delivery_flow: { accesorios: @delivery_flow.accesorios, fechaPromesaEntrega: @delivery_flow.fechaPromesaEntrega, nombreCliente: @delivery_flow.nombreCliente, observaciones: @delivery_flow.observaciones, pedido: @delivery_flow.pedido, placas: @delivery_flow.placas, tipoCredito: @delivery_flow.tipoCredito, user_id: @delivery_flow.user_id } }
    end

    assert_redirected_to delivery_flow_url(DeliveryFlow.last)
  end

  test "should show delivery_flow" do
    get delivery_flow_url(@delivery_flow)
    assert_response :success
  end

  test "should get edit" do
    get edit_delivery_flow_url(@delivery_flow)
    assert_response :success
  end

  test "should update delivery_flow" do
    patch delivery_flow_url(@delivery_flow), params: { delivery_flow: { accesorios: @delivery_flow.accesorios, fechaPromesaEntrega: @delivery_flow.fechaPromesaEntrega, nombreCliente: @delivery_flow.nombreCliente, observaciones: @delivery_flow.observaciones, pedido: @delivery_flow.pedido, placas: @delivery_flow.placas, tipoCredito: @delivery_flow.tipoCredito, user_id: @delivery_flow.user_id } }
    assert_redirected_to delivery_flow_url(@delivery_flow)
  end

  test "should destroy delivery_flow" do
    assert_difference('DeliveryFlow.count', -1) do
      delete delivery_flow_url(@delivery_flow)
    end

    assert_redirected_to delivery_flows_url
  end
end

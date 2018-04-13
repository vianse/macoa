require 'test_helper'

class StepFivesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @step_fife = step_fives(:one)
  end

  test "should get index" do
    get step_fives_url
    assert_response :success
  end

  test "should get new" do
    get new_step_fife_url
    assert_response :success
  end

  test "should create step_fife" do
    assert_difference('StepFive.count') do
      post step_fives_url, params: { step_fife: { completado: @step_fife.completado, confirmacion: @step_fife.confirmacion, documentacion: @step_fife.documentacion, fechaEntregaGestor: @step_fife.fechaEntregaGestor, gestorConfirmacion: @step_fife.gestorConfirmacion, nombreGestor: @step_fife.nombreGestor, observaciones: @step_fife.observaciones, pedido: @step_fife.pedido, placas: @step_fife.placas, user_id: @step_fife.user_id } }
    end

    assert_redirected_to step_fife_url(StepFive.last)
  end

  test "should show step_fife" do
    get step_fife_url(@step_fife)
    assert_response :success
  end

  test "should get edit" do
    get edit_step_fife_url(@step_fife)
    assert_response :success
  end

  test "should update step_fife" do
    patch step_fife_url(@step_fife), params: { step_fife: { completado: @step_fife.completado, confirmacion: @step_fife.confirmacion, documentacion: @step_fife.documentacion, fechaEntregaGestor: @step_fife.fechaEntregaGestor, gestorConfirmacion: @step_fife.gestorConfirmacion, nombreGestor: @step_fife.nombreGestor, observaciones: @step_fife.observaciones, pedido: @step_fife.pedido, placas: @step_fife.placas, user_id: @step_fife.user_id } }
    assert_redirected_to step_fife_url(@step_fife)
  end

  test "should destroy step_fife" do
    assert_difference('StepFive.count', -1) do
      delete step_fife_url(@step_fife)
    end

    assert_redirected_to step_fives_url
  end
end

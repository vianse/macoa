require 'test_helper'

class TipoVentaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_ventum = tipo_venta(:one)
  end

  test "should get index" do
    get tipo_venta_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_ventum_url
    assert_response :success
  end

  test "should create tipo_ventum" do
    assert_difference('TipoVentum.count') do
      post tipo_venta_url, params: { tipo_ventum: { tipoVenta: @tipo_ventum.tipoVenta } }
    end

    assert_redirected_to tipo_ventum_url(TipoVentum.last)
  end

  test "should show tipo_ventum" do
    get tipo_ventum_url(@tipo_ventum)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_ventum_url(@tipo_ventum)
    assert_response :success
  end

  test "should update tipo_ventum" do
    patch tipo_ventum_url(@tipo_ventum), params: { tipo_ventum: { tipoVenta: @tipo_ventum.tipoVenta } }
    assert_redirected_to tipo_ventum_url(@tipo_ventum)
  end

  test "should destroy tipo_ventum" do
    assert_difference('TipoVentum.count', -1) do
      delete tipo_ventum_url(@tipo_ventum)
    end

    assert_redirected_to tipo_venta_url
  end
end

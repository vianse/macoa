require 'test_helper'

class FlowsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flow = flows(:one)
  end

  test "should get index" do
    get flows_url
    assert_response :success
  end

  test "should get new" do
    get new_flow_url
    assert_response :success
  end

  test "should create flow" do
    assert_difference('Flow.count') do
      post flows_url, params: { flow: { current_hash: @flow.current_hash, data: @flow.data, index: @flow.index, nonce: @flow.nonce, prev_hash: @flow.prev_hash, time: @flow.time } }
    end

    assert_redirected_to flow_url(Flow.last)
  end

  test "should show flow" do
    get flow_url(@flow)
    assert_response :success
  end

  test "should get edit" do
    get edit_flow_url(@flow)
    assert_response :success
  end

  test "should update flow" do
    patch flow_url(@flow), params: { flow: { current_hash: @flow.current_hash, data: @flow.data, index: @flow.index, nonce: @flow.nonce, prev_hash: @flow.prev_hash, time: @flow.time } }
    assert_redirected_to flow_url(@flow)
  end

  test "should destroy flow" do
    assert_difference('Flow.count', -1) do
      delete flow_url(@flow)
    end

    assert_redirected_to flows_url
  end
end

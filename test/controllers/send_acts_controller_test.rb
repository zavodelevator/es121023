require "test_helper"

class SendActsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @send_act = send_acts(:one)
  end

  test "should get index" do
    get send_acts_url
    assert_response :success
  end

  test "should get new" do
    get new_send_act_url
    assert_response :success
  end

  test "should create send_act" do
    assert_difference("SendAct.count") do
      post send_acts_url, params: { send_act: { data: @send_act.data } }
    end

    assert_redirected_to send_act_url(SendAct.last)
  end

  test "should show send_act" do
    get send_act_url(@send_act)
    assert_response :success
  end

  test "should get edit" do
    get edit_send_act_url(@send_act)
    assert_response :success
  end

  test "should update send_act" do
    patch send_act_url(@send_act), params: { send_act: { data: @send_act.data } }
    assert_redirected_to send_act_url(@send_act)
  end

  test "should destroy send_act" do
    assert_difference("SendAct.count", -1) do
      delete send_act_url(@send_act)
    end

    assert_redirected_to send_acts_url
  end
end

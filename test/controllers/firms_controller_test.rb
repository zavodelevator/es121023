require "test_helper"

class FirmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @firm = firms(:one)
  end

  test "should get index" do
    get firms_url
    assert_response :success
  end

  test "should get new" do
    get new_firm_url
    assert_response :success
  end

  test "should create firm" do
    assert_difference("Firm.count") do
      post firms_url, params: { firm: { data: @firm.data, edrpou: @firm.edrpou, email: @firm.email, ipn: @firm.ipn, name: @firm.name } }
    end

    assert_redirected_to firm_url(Firm.last)
  end

  test "should show firm" do
    get firm_url(@firm)
    assert_response :success
  end

  test "should get edit" do
    get edit_firm_url(@firm)
    assert_response :success
  end

  test "should update firm" do
    patch firm_url(@firm), params: { firm: { data: @firm.data, edrpou: @firm.edrpou, email: @firm.email, ipn: @firm.ipn, name: @firm.name } }
    assert_redirected_to firm_url(@firm)
  end

  test "should destroy firm" do
    assert_difference("Firm.count", -1) do
      delete firm_url(@firm)
    end

    assert_redirected_to firms_url
  end
end

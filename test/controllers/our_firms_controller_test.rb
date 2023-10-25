require "test_helper"

class OurFirmsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @our_firm = our_firms(:one)
  end

  test "should get index" do
    get our_firms_url
    assert_response :success
  end

  test "should get new" do
    get new_our_firm_url
    assert_response :success
  end

  test "should create our_firm" do
    assert_difference("OurFirm.count") do
      post our_firms_url, params: { our_firm: { data: @our_firm.data, edrpou: @our_firm.edrpou, email: @our_firm.email, ipn: @our_firm.ipn, name: @our_firm.name, persons: @our_firm.persons } }
    end

    assert_redirected_to our_firm_url(OurFirm.last)
  end

  test "should show our_firm" do
    get our_firm_url(@our_firm)
    assert_response :success
  end

  test "should get edit" do
    get edit_our_firm_url(@our_firm)
    assert_response :success
  end

  test "should update our_firm" do
    patch our_firm_url(@our_firm), params: { our_firm: { data: @our_firm.data, edrpou: @our_firm.edrpou, email: @our_firm.email, ipn: @our_firm.ipn, name: @our_firm.name, persons: @our_firm.persons } }
    assert_redirected_to our_firm_url(@our_firm)
  end

  test "should destroy our_firm" do
    assert_difference("OurFirm.count", -1) do
      delete our_firm_url(@our_firm)
    end

    assert_redirected_to our_firms_url
  end
end

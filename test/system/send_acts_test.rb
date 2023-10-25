require "application_system_test_case"

class SendActsTest < ApplicationSystemTestCase
  setup do
    @send_act = send_acts(:one)
  end

  test "visiting the index" do
    visit send_acts_url
    assert_selector "h1", text: "Send acts"
  end

  test "should create send act" do
    visit send_acts_url
    click_on "New send act"

    fill_in "Data", with: @send_act.data
    click_on "Create Send act"

    assert_text "Send act was successfully created"
    click_on "Back"
  end

  test "should update Send act" do
    visit send_act_url(@send_act)
    click_on "Edit this send act", match: :first

    fill_in "Data", with: @send_act.data
    click_on "Update Send act"

    assert_text "Send act was successfully updated"
    click_on "Back"
  end

  test "should destroy Send act" do
    visit send_act_url(@send_act)
    click_on "Destroy this send act", match: :first

    assert_text "Send act was successfully destroyed"
  end
end

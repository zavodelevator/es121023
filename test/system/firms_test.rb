require "application_system_test_case"

class FirmsTest < ApplicationSystemTestCase
  setup do
    @firm = firms(:one)
  end

  test "visiting the index" do
    visit firms_url
    assert_selector "h1", text: "Firms"
  end

  test "should create firm" do
    visit firms_url
    click_on "New firm"

    fill_in "Data", with: @firm.data
    fill_in "Edrpou", with: @firm.edrpou
    fill_in "Email", with: @firm.email
    fill_in "Ipn", with: @firm.ipn
    fill_in "Name", with: @firm.name
    click_on "Create Firm"

    assert_text "Firm was successfully created"
    click_on "Back"
  end

  test "should update Firm" do
    visit firm_url(@firm)
    click_on "Edit this firm", match: :first

    fill_in "Data", with: @firm.data
    fill_in "Edrpou", with: @firm.edrpou
    fill_in "Email", with: @firm.email
    fill_in "Ipn", with: @firm.ipn
    fill_in "Name", with: @firm.name
    click_on "Update Firm"

    assert_text "Firm was successfully updated"
    click_on "Back"
  end

  test "should destroy Firm" do
    visit firm_url(@firm)
    click_on "Destroy this firm", match: :first

    assert_text "Firm was successfully destroyed"
  end
end

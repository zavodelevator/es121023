require "application_system_test_case"

class OurFirmsTest < ApplicationSystemTestCase
  setup do
    @our_firm = our_firms(:one)
  end

  test "visiting the index" do
    visit our_firms_url
    assert_selector "h1", text: "Our firms"
  end

  test "should create our firm" do
    visit our_firms_url
    click_on "New our firm"

    fill_in "Data", with: @our_firm.data
    fill_in "Edrpou", with: @our_firm.edrpou
    fill_in "Email", with: @our_firm.email
    fill_in "Ipn", with: @our_firm.ipn
    fill_in "Name", with: @our_firm.name
    fill_in "Persons", with: @our_firm.persons
    click_on "Create Our firm"

    assert_text "Our firm was successfully created"
    click_on "Back"
  end

  test "should update Our firm" do
    visit our_firm_url(@our_firm)
    click_on "Edit this our firm", match: :first

    fill_in "Data", with: @our_firm.data
    fill_in "Edrpou", with: @our_firm.edrpou
    fill_in "Email", with: @our_firm.email
    fill_in "Ipn", with: @our_firm.ipn
    fill_in "Name", with: @our_firm.name
    fill_in "Persons", with: @our_firm.persons
    click_on "Update Our firm"

    assert_text "Our firm was successfully updated"
    click_on "Back"
  end

  test "should destroy Our firm" do
    visit our_firm_url(@our_firm)
    click_on "Destroy this our firm", match: :first

    assert_text "Our firm was successfully destroyed"
  end
end

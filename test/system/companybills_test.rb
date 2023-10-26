require "application_system_test_case"

class CompanybillsTest < ApplicationSystemTestCase
  setup do
    @companybill = companybills(:one)
  end

  test "visiting the index" do
    visit companybills_url
    assert_selector "h1", text: "Companybills"
  end

  test "creating a Companybill" do
    visit companybills_url
    click_on "New Companybill"

    fill_in "Companybillname", with: @companybill.companybillname
    click_on "Create Companybill"

    assert_text "Companybill was successfully created"
    click_on "Back"
  end

  test "updating a Companybill" do
    visit companybills_url
    click_on "Edit", match: :first

    fill_in "Companybillname", with: @companybill.companybillname
    click_on "Update Companybill"

    assert_text "Companybill was successfully updated"
    click_on "Back"
  end

  test "destroying a Companybill" do
    visit companybills_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companybill was successfully destroyed"
  end
end

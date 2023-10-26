require "application_system_test_case"

class SidemodulesTest < ApplicationSystemTestCase
  setup do
    @sidemodule = sidemodules(:one)
  end

  test "visiting the index" do
    visit sidemodules_url
    assert_selector "h1", text: "Sidemodules"
  end

  test "creating a Sidemodule" do
    visit sidemodules_url
    click_on "New Sidemodule"

    fill_in "Company", with: @sidemodule.company_id
    fill_in "Name", with: @sidemodule.name
    click_on "Create Sidemodule"

    assert_text "Sidemodule was successfully created"
    click_on "Back"
  end

  test "updating a Sidemodule" do
    visit sidemodules_url
    click_on "Edit", match: :first

    fill_in "Company", with: @sidemodule.company_id
    fill_in "Name", with: @sidemodule.name
    click_on "Update Sidemodule"

    assert_text "Sidemodule was successfully updated"
    click_on "Back"
  end

  test "destroying a Sidemodule" do
    visit sidemodules_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sidemodule was successfully destroyed"
  end
end

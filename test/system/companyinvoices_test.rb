require "application_system_test_case"

class CompanyinvoicesTest < ApplicationSystemTestCase
  setup do
    @companyinvoice = companyinvoices(:one)
  end

  test "visiting the index" do
    visit companyinvoices_url
    assert_selector "h1", text: "Companyinvoices"
  end

  test "creating a Companyinvoice" do
    visit companyinvoices_url
    click_on "New Companyinvoice"

    fill_in "Companybill", with: @companyinvoice.companybill_id
    fill_in "Invoicename", with: @companyinvoice.invoicename
    click_on "Create Companyinvoice"

    assert_text "Companyinvoice was successfully created"
    click_on "Back"
  end

  test "updating a Companyinvoice" do
    visit companyinvoices_url
    click_on "Edit", match: :first

    fill_in "Companybill", with: @companyinvoice.companybill_id
    fill_in "Invoicename", with: @companyinvoice.invoicename
    click_on "Update Companyinvoice"

    assert_text "Companyinvoice was successfully updated"
    click_on "Back"
  end

  test "destroying a Companyinvoice" do
    visit companyinvoices_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Companyinvoice was successfully destroyed"
  end
end

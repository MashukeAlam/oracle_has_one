require 'test_helper'

class CompanyinvoicesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companyinvoice = companyinvoices(:one)
  end

  test "should get index" do
    get companyinvoices_url
    assert_response :success
  end

  test "should get new" do
    get new_companyinvoice_url
    assert_response :success
  end

  test "should create companyinvoice" do
    assert_difference('Companyinvoice.count') do
      post companyinvoices_url, params: { companyinvoice: { companybill_id: @companyinvoice.companybill_id, invoicename: @companyinvoice.invoicename } }
    end

    assert_redirected_to companyinvoice_url(Companyinvoice.last)
  end

  test "should show companyinvoice" do
    get companyinvoice_url(@companyinvoice)
    assert_response :success
  end

  test "should get edit" do
    get edit_companyinvoice_url(@companyinvoice)
    assert_response :success
  end

  test "should update companyinvoice" do
    patch companyinvoice_url(@companyinvoice), params: { companyinvoice: { companybill_id: @companyinvoice.companybill_id, invoicename: @companyinvoice.invoicename } }
    assert_redirected_to companyinvoice_url(@companyinvoice)
  end

  test "should destroy companyinvoice" do
    assert_difference('Companyinvoice.count', -1) do
      delete companyinvoice_url(@companyinvoice)
    end

    assert_redirected_to companyinvoices_url
  end
end

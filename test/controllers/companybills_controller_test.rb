require 'test_helper'

class CompanybillsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @companybill = companybills(:one)
  end

  test "should get index" do
    get companybills_url
    assert_response :success
  end

  test "should get new" do
    get new_companybill_url
    assert_response :success
  end

  test "should create companybill" do
    assert_difference('Companybill.count') do
      post companybills_url, params: { companybill: { companybillname: @companybill.companybillname } }
    end

    assert_redirected_to companybill_url(Companybill.last)
  end

  test "should show companybill" do
    get companybill_url(@companybill)
    assert_response :success
  end

  test "should get edit" do
    get edit_companybill_url(@companybill)
    assert_response :success
  end

  test "should update companybill" do
    patch companybill_url(@companybill), params: { companybill: { companybillname: @companybill.companybillname } }
    assert_redirected_to companybill_url(@companybill)
  end

  test "should destroy companybill" do
    assert_difference('Companybill.count', -1) do
      delete companybill_url(@companybill)
    end

    assert_redirected_to companybills_url
  end
end

require 'test_helper'

class SidemodulesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sidemodule = sidemodules(:one)
  end

  test "should get index" do
    get sidemodules_url
    assert_response :success
  end

  test "should get new" do
    get new_sidemodule_url
    assert_response :success
  end

  test "should create sidemodule" do
    assert_difference('Sidemodule.count') do
      post sidemodules_url, params: { sidemodule: { company_id: @sidemodule.company_id, name: @sidemodule.name } }
    end

    assert_redirected_to sidemodule_url(Sidemodule.last)
  end

  test "should show sidemodule" do
    get sidemodule_url(@sidemodule)
    assert_response :success
  end

  test "should get edit" do
    get edit_sidemodule_url(@sidemodule)
    assert_response :success
  end

  test "should update sidemodule" do
    patch sidemodule_url(@sidemodule), params: { sidemodule: { company_id: @sidemodule.company_id, name: @sidemodule.name } }
    assert_redirected_to sidemodule_url(@sidemodule)
  end

  test "should destroy sidemodule" do
    assert_difference('Sidemodule.count', -1) do
      delete sidemodule_url(@sidemodule)
    end

    assert_redirected_to sidemodules_url
  end
end

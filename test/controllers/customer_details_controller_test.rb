require "test_helper"

class CustomerDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_detail = customer_details(:one)
  end

  test "should get index" do
    get customer_details_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_detail_url
    assert_response :success
  end

  test "should create customer_detail" do
    assert_difference('CustomerDetail.count') do
      post customer_details_url, params: { customer_detail: { AttendentContact: @customer_detail.AttendentContact, BillingAddress: @customer_detail.BillingAddress, CustomerName: @customer_detail.CustomerName, InstallationAddress: @customer_detail.InstallationAddress, POC: @customer_detail.POC } }
    end

    assert_redirected_to customer_detail_url(CustomerDetail.last)
  end

  test "should show customer_detail" do
    get customer_detail_url(@customer_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_detail_url(@customer_detail)
    assert_response :success
  end

  test "should update customer_detail" do
    patch customer_detail_url(@customer_detail), params: { customer_detail: { AttendentContact: @customer_detail.AttendentContact, BillingAddress: @customer_detail.BillingAddress, CustomerName: @customer_detail.CustomerName, InstallationAddress: @customer_detail.InstallationAddress, POC: @customer_detail.POC } }
    assert_redirected_to customer_detail_url(@customer_detail)
  end

  test "should destroy customer_detail" do
    assert_difference('CustomerDetail.count', -1) do
      delete customer_detail_url(@customer_detail)
    end

    assert_redirected_to customer_details_url
  end
end

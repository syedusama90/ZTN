require "test_helper"

class CustomerNamesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_name = customer_names(:one)
  end

  test "should get index" do
    get customer_names_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_name_url
    assert_response :success
  end

  test "should create customer_name" do
    assert_difference('CustomerName.count') do
      post customer_names_url, params: { customer_name: {  } }
    end

    assert_redirected_to customer_name_url(CustomerName.last)
  end

  test "should show customer_name" do
    get customer_name_url(@customer_name)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_name_url(@customer_name)
    assert_response :success
  end

  test "should update customer_name" do
    patch customer_name_url(@customer_name), params: { customer_name: {  } }
    assert_redirected_to customer_name_url(@customer_name)
  end

  test "should destroy customer_name" do
    assert_difference('CustomerName.count', -1) do
      delete customer_name_url(@customer_name)
    end

    assert_redirected_to customer_names_url
  end
end

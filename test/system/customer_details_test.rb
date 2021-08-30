require "application_system_test_case"

class CustomerDetailsTest < ApplicationSystemTestCase
  setup do
    @customer_detail = customer_details(:one)
  end

  test "visiting the index" do
    visit customer_details_url
    assert_selector "h1", text: "Customer Details"
  end

  test "creating a Customer detail" do
    visit customer_details_url
    click_on "New Customer Detail"

    fill_in "Attendentcontact", with: @customer_detail.AttendentContact
    fill_in "Billingaddress", with: @customer_detail.BillingAddress
    fill_in "Customername", with: @customer_detail.CustomerName
    fill_in "Installationaddress", with: @customer_detail.InstallationAddress
    fill_in "Poc", with: @customer_detail.POC
    click_on "Create Customer detail"

    assert_text "Customer detail was successfully created"
    click_on "Back"
  end

  test "updating a Customer detail" do
    visit customer_details_url
    click_on "Edit", match: :first

    fill_in "Attendentcontact", with: @customer_detail.AttendentContact
    fill_in "Billingaddress", with: @customer_detail.BillingAddress
    fill_in "Customername", with: @customer_detail.CustomerName
    fill_in "Installationaddress", with: @customer_detail.InstallationAddress
    fill_in "Poc", with: @customer_detail.POC
    click_on "Update Customer detail"

    assert_text "Customer detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer detail" do
    visit customer_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer detail was successfully destroyed"
  end
end

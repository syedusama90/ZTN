require "application_system_test_case"

class CustomerNamesTest < ApplicationSystemTestCase
  setup do
    @customer_name = customer_names(:one)
  end

  test "visiting the index" do
    visit customer_names_url
    assert_selector "h1", text: "Customer Names"
  end

  test "creating a Customer name" do
    visit customer_names_url
    click_on "New Customer Name"

    click_on "Create Customer name"

    assert_text "Customer name was successfully created"
    click_on "Back"
  end

  test "updating a Customer name" do
    visit customer_names_url
    click_on "Edit", match: :first

    click_on "Update Customer name"

    assert_text "Customer name was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer name" do
    visit customer_names_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer name was successfully destroyed"
  end
end

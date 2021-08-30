require "application_system_test_case"

class InvoiceHistoriesTest < ApplicationSystemTestCase
  setup do
    @invoice_history = invoice_histories(:one)
  end

  test "visiting the index" do
    visit invoice_histories_url
    assert_selector "h1", text: "Invoice Histories"
  end

  test "creating a Invoice history" do
    visit invoice_histories_url
    click_on "New Invoice History"

    fill_in "Paid", with: @invoice_history.Paid
    fill_in "Invoiceamount", with: @invoice_history.invoiceAmount
    fill_in "Invoicemonth", with: @invoice_history.invoiceMonth
    fill_in "Invoivenumber", with: @invoice_history.invoiveNumber
    click_on "Create Invoice history"

    assert_text "Invoice history was successfully created"
    click_on "Back"
  end

  test "updating a Invoice history" do
    visit invoice_histories_url
    click_on "Edit", match: :first

    fill_in "Paid", with: @invoice_history.Paid
    fill_in "Invoiceamount", with: @invoice_history.invoiceAmount
    fill_in "Invoicemonth", with: @invoice_history.invoiceMonth
    fill_in "Invoivenumber", with: @invoice_history.invoiveNumber
    click_on "Update Invoice history"

    assert_text "Invoice history was successfully updated"
    click_on "Back"
  end

  test "destroying a Invoice history" do
    visit invoice_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Invoice history was successfully destroyed"
  end
end

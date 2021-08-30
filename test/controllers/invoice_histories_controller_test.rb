require "test_helper"

class InvoiceHistoriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @invoice_history = invoice_histories(:one)
  end

  test "should get index" do
    get invoice_histories_url
    assert_response :success
  end

  test "should get new" do
    get new_invoice_history_url
    assert_response :success
  end

  test "should create invoice_history" do
    assert_difference('InvoiceHistory.count') do
      post invoice_histories_url, params: { invoice_history: { Paid: @invoice_history.Paid, invoiceAmount: @invoice_history.invoiceAmount, invoiceMonth: @invoice_history.invoiceMonth, invoiveNumber: @invoice_history.invoiveNumber } }
    end

    assert_redirected_to invoice_history_url(InvoiceHistory.last)
  end

  test "should show invoice_history" do
    get invoice_history_url(@invoice_history)
    assert_response :success
  end

  test "should get edit" do
    get edit_invoice_history_url(@invoice_history)
    assert_response :success
  end

  test "should update invoice_history" do
    patch invoice_history_url(@invoice_history), params: { invoice_history: { Paid: @invoice_history.Paid, invoiceAmount: @invoice_history.invoiceAmount, invoiceMonth: @invoice_history.invoiceMonth, invoiveNumber: @invoice_history.invoiveNumber } }
    assert_redirected_to invoice_history_url(@invoice_history)
  end

  test "should destroy invoice_history" do
    assert_difference('InvoiceHistory.count', -1) do
      delete invoice_history_url(@invoice_history)
    end

    assert_redirected_to invoice_histories_url
  end
end

class HomeController < ApplicationController
  def index
    @customer_details = CustomerDetail.all
    @invoice_histories = InvoiceHistory.all
    @amounts = Amount.all
  end
end

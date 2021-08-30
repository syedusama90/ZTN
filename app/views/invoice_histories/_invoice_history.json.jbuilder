json.extract! invoice_history, :id, :invoiceMonth, :invoiveNumber, :invoiceAmount, :Paid, :created_at, :updated_at
json.url invoice_history_url(invoice_history, format: :json)

json.extract! customer_detail, :id, :CustomerName, :POC, :BillingAddress, :InstallationAddress, :AttendentContact, :created_at, :updated_at
json.url customer_detail_url(customer_detail, format: :json)

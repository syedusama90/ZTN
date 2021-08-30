class CustomerDetail < ApplicationRecord
    has_many :invoice_histories
end

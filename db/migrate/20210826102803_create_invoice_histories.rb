class CreateInvoiceHistories < ActiveRecord::Migration[6.1]
  def change
    create_table :invoice_histories do |t|
      t.string :invoiceMonth
      t.string :invoiveNumber
      t.string :invoiceAmount
      t.string :Paid

      t.timestamps
    end
  end
end

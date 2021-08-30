class CreateCustomerDetails < ActiveRecord::Migration[6.1]
  def change
    create_table :customer_details do |t|
      t.string :CustomerName, :null => false
      t.string :POC,:null => false
      t.string :BillingAddress,:null => false
      t.string :InstallationAddress,:null => false
      t.string :AttendentContact,:null => false
      t.timestamps
    end
  end
end

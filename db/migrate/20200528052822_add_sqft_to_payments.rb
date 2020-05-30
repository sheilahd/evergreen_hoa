class AddSqftToPayments < ActiveRecord::Migration[5.2]
  def change
    add_column :payments, :sqft, :integer
  end
end

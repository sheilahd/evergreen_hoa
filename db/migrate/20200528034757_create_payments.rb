class CreatePayments < ActiveRecord::Migration[5.2]
  def change
    create_table :payments do |t|
      t.boolean :pay_freq
      t.references :customer, foreign_key: true

      t.timestamps
    end
  end
end

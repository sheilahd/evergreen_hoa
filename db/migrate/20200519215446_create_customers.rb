class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :fam_name
      t.string :st_numb
      t.string :st_name

      t.timestamps
    end
  end
end

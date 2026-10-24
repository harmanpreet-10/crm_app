class CreateCustomers < ActiveRecord::Migration[7.2]
  def change
    create_table :customers do |t|
      t.string :full_name, null: false
      t.string :phone_number
      t.string :email_address
      t.string :province
      t.text :notes
      t.timestamps
    end
  end
end

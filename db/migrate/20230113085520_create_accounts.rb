class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.string :password_digest 
      t.string :phone_number
      t.string :country

      t.timestamps
    end
  end
end

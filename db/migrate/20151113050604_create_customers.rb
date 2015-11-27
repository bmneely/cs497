class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.references :user, index: true, foreign_key: true
      t.string :stripe_token
      t.string :first_name
      t.string :last_name
      t.integer :last_4_cc
      t.string :address
      t.string :address_2
      t.string :apt_or_suite
      t.string :zipcode

      t.timestamps null: false
    end
  end
end

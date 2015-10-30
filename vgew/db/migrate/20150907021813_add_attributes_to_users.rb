class AddAttributesToUsers < ActiveRecord::Migration
  def change
    add_column :users, :name, :string
    add_column :users, :bio, :text
    add_column :users, :role, :integer
  end
end

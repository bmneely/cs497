class AddStorefrontToStores < ActiveRecord::Migration
  def change
    add_column :stores, :storefront, :string
  end
end

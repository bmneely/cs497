class AddSocialMediaToStores < ActiveRecord::Migration
  def change
    add_column :stores, :facebook_url, :string
    add_column :stores, :instagram_url, :string
    add_column :stores, :twitter_url, :string
    add_column :stores, :tumblr_url, :string
  end
end

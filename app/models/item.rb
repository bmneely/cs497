# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  price       :integer
#  store_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  slug        :string
#  image       :string
#

class Item < ActiveRecord::Base

  belongs_to :store
  has_many :comments
  after_create :send_favorite_emails
  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :image, use: :slugged

  self.per_page = 16

  private

  def send_favorite_emails
    store.favorites.each do |favorite|
      FavoriteMailer.new_item(favorite.user, store, self).deliver_now
    end
  end
end

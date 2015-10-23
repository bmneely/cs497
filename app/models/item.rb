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
#

class Item < ActiveRecord::Base
  belongs_to :store
  has_many :items

  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :image, use: :slugged
end

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

  mount_uploader :image, ImageUploader

  extend FriendlyId
  friendly_id :image, use: :slugged
end

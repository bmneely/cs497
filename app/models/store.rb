# == Schema Information
#
# Table name: stores
#
#  id          :integer          not null, primary key
#  name        :string
#  description :text
#  user_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Store < ActiveRecord::Base
  belongs_to :user

  mount_uploader :storefront, StorefrontUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, allow_blank: false, length: { minimum: 1, maximum: 25 }
end

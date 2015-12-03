# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  store_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Blog < ActiveRecord::Base
  has_many :posts
  belongs_to :store

  extend FriendlyId
  friendly_id :name, use: :slugged
end

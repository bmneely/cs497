# == Schema Information
#
# Table name: purchased_items
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  item_id    :integer
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PurchasedItem < ActiveRecord::Base
  belongs_to :user
  belongs_to :item

  validates_presence_of :user, :item

  default_scope -> { includes(:item) }

  def self.user_purchased_item?(user, item)
    user.purchased_item_ids.include?(item.id)
  end
end

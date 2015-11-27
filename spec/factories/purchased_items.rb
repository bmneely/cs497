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

FactoryGirl.define do
  factory :purchased_item do
    user nil
item nil
price 1
  end

end

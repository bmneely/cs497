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
#  archived    :boolean
#

FactoryGirl.define do
  factory :item do
    
  end

end

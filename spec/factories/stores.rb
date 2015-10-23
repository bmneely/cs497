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
#  storefront  :string
#  slug        :string
#

FactoryGirl.define do
  factory :store do
    
  end

end

# == Schema Information
#
# Table name: stores
#
#  id            :integer          not null, primary key
#  name          :string
#  description   :text
#  user_id       :integer
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  storefront    :string
#  slug          :string
#  facebook_url  :string
#  instagram_url :string
#  twitter_url   :string
#  tumblr_url    :string
#

FactoryGirl.define do
  factory :store do
    
  end

end

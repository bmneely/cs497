# == Schema Information
#
# Table name: customers
#
#  id           :integer          not null, primary key
#  user_id      :integer
#  stripe_token :string
#  first_name   :string
#  last_name    :string
#  last_4_cc    :integer
#  address      :string
#  address_2    :string
#  apt_or_suite :string
#  zipcode      :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

FactoryGirl.define do
  factory :customer do
    
  end

end

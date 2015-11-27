# == Schema Information
#
# Table name: addresses
#
#  id         :integer          not null, primary key
#  line1      :string
#  line2      :string
#  city       :string
#  state      :string
#  zip        :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

FactoryGirl.define do
  factory :address do
    line1 "MyString"
line2 "MyString"
city "MyString"
state "MyString"
zip 1
  end

end

# == Schema Information
#
# Table name: blogs
#
#  id         :integer          not null, primary key
#  store_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :blog do
    references ""
  end

end

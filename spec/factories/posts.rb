# == Schema Information
#
# Table name: posts
#
#  id         :integer          not null, primary key
#  blog_id    :integer
#  title      :string
#  body       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :post do
    blog nil
title "MyString"
body "MyText"
  end

end

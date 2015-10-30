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

class Address < ActiveRecord::Base
end

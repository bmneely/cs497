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

require 'rails_helper'

RSpec.describe Store, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

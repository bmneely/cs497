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

class Store < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_one :blog

  mount_uploader :storefront, StorefrontUploader

  extend FriendlyId
  friendly_id :name, use: :slugged

  validates :name, allow_blank: false, length: { minimum: 1, maximum: 40 }
  validates :description, allow_blank: false, length: { minimum: 1 }

  validates_format_of :facebook_url, :with => URI::regexp(%w(http https)), allow_blank: true
  validates_format_of :instagram_url, :with => URI::regexp(%w(http https)), allow_blank: true
  validates_format_of :twitter_url, :with => URI::regexp(%w(http https)), allow_blank: true
  validates_format_of :tumblr_url, :with => URI::regexp(%w(http https)), allow_blank: true

  def blog
    super || create_blog(name: name)
  end
end

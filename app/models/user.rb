# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :inet
#  last_sign_in_ip        :inet
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  name                   :string
#  bio                    :text
#  role                   :integer
#  slug                   :string
#

class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable, :confirmable
  include Gravtastic
  gravtastic

  extend FriendlyId
  friendly_id :name, use: :slugged

  before_save { self.role ||= :member }

  has_one :address
  accepts_nested_attributes_for :address

  has_one :cart, dependent: :destroy
  has_one :customer, dependent: :destroy

  has_many :stores, dependent: :destroy
  has_many :purchased_items, dependent: :destroy

  has_many :favorites, dependent: :destroy

  enum role: [:member, :seller, :admin]

  validates :email, email: true, uniqueness: {
    case_sensitive: false, message: "That email has already been registered." }

  def favorite_for(store)
    favorites.where(store_id: store.id).first
  end
end

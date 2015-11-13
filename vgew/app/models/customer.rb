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

class Customer < ActiveRecord::Base
  before_validation :get_stripe_customer_token, on: :create
  before_validation :update_stripe_customer, on: :update

  attr_accessor :stripe_card_token

  belongs_to :user
  delegate :email, to: :user

  validates_presence_of :zipcode
  validates_presence_of :user_id
  validates :first_name, length: { maximum: 250 }
  validates :last_name, length: { maximum: 250 }
  validates :address, presence: true, length: { maximum: 250 }
  validates :address_2, length: { maximum: 250 }
  validates :apt_or_suite, length: { maximum: 250 }
  validates_format_of :zipcode, with: /\A\d{5}-\d{4}|\A\d{5}\z/,
                                message: "should be 12345 or 12345-1234"

  def full_name
    "#{ first_name } #{ last_name }"
  end

  def full_address
    [address, address_2, apt_or_suite, zipcode].select(&:present?).join('<br>')
  end

  private

  def update_stripe_customer
    return unless stripe_card_token.present?
    stripe = Stripe::Customer.retrieve(stripe_token)
    stripe.metadata = stripe_metadata
    stripe.card     = stripe_card_token
    stripe.email    = email
    stripe.save
  end

  def get_stripe_customer_token
    return unless stripe_card_token.present?
    self.stripe_token = Stripe::Customer.create(metadata: stripe_metadata,
                                                card: stripe_card_token,
                                                email: email).id
  rescue Stripe::InvalidRequestError => e
    puts "STRIPE ERROR: #{ e.message }"
    errors.add(:base, "Sorry about that, there was a problem with your credit card.")
    false
  end

  def stripe_metadata
    {
      name: full_name,
      address: address,
      address_2: address_2,
      apt_or_suite: apt_or_suite,
      zipcode: zipcode,
      customer_id: id
    }
  end

end

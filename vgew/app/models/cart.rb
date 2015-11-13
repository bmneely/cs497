class Cart < ActiveRecord::Base
  belongs_to :user
  has_many :cart_items

  default_scope -> { includes(:cart_items) }
  validates_presence_of :user

  def empty?
    cart_items.empty?
  end

  def total
    cart_items.map(&:price).inject(:+)
  end

  def has_item?(item)
    cart_items.where(item: item).exists?
  end

  def count
    cart_items.count
  end

  def buy!
    return if empty?

    cart_items.each do |item|
      PurchasedItem.create!(user: user, item: item, purchase_price: item.price)
      puts "$$: User #{ user.id } purchased item #{ item.id } for #{ item.price }" unless Rails.env.test?
      item.destroy
    end
    send_purchase_emails
  end

  def send_purchase_emails
    MoneyMailer.purchase_email(self).deliver
  end
end

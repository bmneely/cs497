class MoneyMailer < ActionMailer::Base
  default from: "from@example.com"

  def purchase_email(cart)
    @cart = cart
    @buyer = cart.user

    mail(to: @buyer.email, subject: "Your Purchase ")
  end
end

class CustomersController < ApplicationController
  def new
    @customer = Customer.new
    authorize @customer
  end

  def create
    @customer = current_user.build_customer(customer_params)
    authorize @customer

    if @customer.save
      if session.delete('proceed_to_checkout')
        redirect_to cart_path(@cart), notice: "Thanks! You're ready to checkout."
      else
        redirect_to @customer.user, notice: 'Billing information was successfully added.'
      end
    else
      render action: 'new'
    end
  end

  def customer_params
    params.require(:customer).permit(:stripe_card_token, :first_name, :last_name,
                                     :last_4_cc, :address, :address_2,
                                     :apt_or_suite, :zipcode)
  end
end

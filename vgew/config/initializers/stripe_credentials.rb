module StripeCredentials

  PUBLIC_KEY  = ENV['STRIPE_PUBLIC_KEY']
  PRIVATE_KEY = ENV['STRIPE_PRIVATE_KEY']

  def self.all_keys_initialized?
    PUBLIC_KEY && PRIVATE_KEY
  end

  def self.uninitialized_keys_warning_msg
    puts "WARNING: Stripe Environment Variables not initialized. "\
         "See config/initializers/stripe_credentials.rb".red
  end
end

if StripeCredentials.all_keys_initialized?
  Stripe.api_key = StripeCredentials::PRIVATE_KEY
else
  StripeCredentials.uninitialized_keys_warning_msg
end

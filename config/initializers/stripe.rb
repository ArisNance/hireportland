Rails.configuration.stripe = {
  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key      => ENV['SECRET_KEY']
}
PUBLISHABLE_KEY="pk_test_4LDdmwyH6QZh8mndTnPrVxQg"
SECRET_KEY="sk_test_ckZnOSOpmki1XYMlgWTFQDTW"
Stripe.api_key = Rails.configuration.stripe[:secret_key]
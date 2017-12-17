class ChargesController < ApplicationController
  def new
  end

def create
  @amount = 2500

  customer = Stripe::Customer.create(
    email: params[:stripeEmail],
    source: params[:stripeToken]
  )

  charge = Stripe::Charge.create(
    customer: customer.id,
    amount: @amount,
    description: 'HirePortland Job Posting',
    currency: 'usd'
  )
# update paid column if payment was successful
current_user.update(paid: true)

rescue Stripe::CardError => e
  flash[:error] = e.message
  redirect_to new_charge_path
end
end

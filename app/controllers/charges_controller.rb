class ChargesController < ApplicationController
  def new
  end

  def create
    # Amount in cents
    @amount = 0

    items = "Sick new tee"

    customer = Stripe::Customer.create(
      :email => params[:stripeEmail],
      :source  => params[:stripeToken]
    )

    charge = Stripe::Charge.create(
      :customer    => customer.id,
      :amount      => @amount,
      :description => 'Rails Stripe customer',
      :currency    => 'usd'
    )

    PurchaseMailer.purchase_confirmation(items, @amount).deliver_now

    rescue Stripe::CardError => e
    flash[:error] = e.message
    redirect_to new_charge_path
  end
end

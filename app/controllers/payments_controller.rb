class PaymentsController < ApplicationController
  before_action :set_rental

  def new
  end

  def create
    customer = Stripe::Customer.create(
        source: params[:stripeToken],
        email:  params[:stripeEmail]
      )
    charge = Stripe::Charge.create(
        customer:     customer.id,
        amount:       @rental.amount_Øres,
        description:  "Payment for bike #{@rental.bike.brand_sku} for rental #{@rental.id} on carriage.dk",
        currency:     @rental.amount.currency
      )
    current_user.update(stripe_customer_id: customer.id)
    @rental.update(payment: charge.to_json, state: 'paid')
    # raise
    redirect_to bike_rental_path(@rental.bike, @rental)


    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_bike_rental_payment_path(@rental.bike, @rental)
  end

  private

  def set_rental
    @rental = Rental.where( state: 'pending').find(params[:rental_id])
  end
end

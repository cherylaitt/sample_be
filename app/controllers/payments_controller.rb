# This controller is responsible for handling the payment process.
class PaymentsController < ApplicationController
  def checkout
    customer = Stripe::Customer.create({ email: params[:email] })

    # Create an Ephemeral Key for the Customer
    ephemeral_key = Stripe::EphemeralKey.create({ customer: customer.id },
                                                {
                                                  stripe_version: '2024-06-20'
                                                })

    # Create a PaymentIntent
    payment_intent = Stripe::PaymentIntent.create(
      {
        amount: params[:amount],
        currency: 'hkd',
        customer: customer.id,
        automatic_payment_methods: {
          enabled: true,
          allow_redirects: 'never'
        },
        receipt_email: params[:email],
        metadata: params[:metadata]
      },
      {
        stripe_version: '2024-06-20'
      }
    )

    order = {
      customer: customer,
      ephemeral_key: ephemeral_key,
      payment_intent: payment_intent
    }

    render json: order, status: '200'
  end
end

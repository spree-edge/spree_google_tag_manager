# frozen_string_literal: true

module SpreeGoogleTagManager
  class PurchasePresenter
    attr_reader :order, :user_email

    def initialize(order)
      @order = order
    end

    def call
      {
        event: 'Purchase',
        detail: {
          order_number: order.number,
          value: order.total&.to_f,
          currency: order.currency,
          tax: order.tax_total&.to_f,
          shipping: order.shipment_total&.to_f,
          coupon: order.promo_code,
          items: line_item_details
        },
        user_email: order.email
      }
    end

    private

    def line_item_details
      order.line_items.map do |line_item|
        variant = line_item.variant

        product = line_item.product

        response = {
          id: variant.sku,
          name: variant.name,
          category: product.category&.name,
          variant: variant.options_text,
          quantity: line_item.quantity,
          price: variant.price_in(current_currency).amount&.to_f
        }

        response
      end
    end
  end
end

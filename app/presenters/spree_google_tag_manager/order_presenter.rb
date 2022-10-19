# frozen_string_literal: true

module SpreeGoogleTagManager
  class OrderPresenter
    class << self
      def add_to_cart(order)
        {
          event: 'add_to_cart',
          detail: {
            order_number: order.number,
            items: line_item_details(order)
          }
        }
      end

      def purchase(order)
        {
          event: 'Purchase',
          detail: {
            order_number: order.number,
            value: order.total&.to_f,
            currency: order.currency,
            tax: order.tax_total&.to_f,
            shipping: order.shipment_total&.to_f,
            coupon: order.promo_code,
            items: line_item_details(order)
          },
          user_email: order.email
        }
      end

      private
      def line_item_details(order)
        order.line_items.map do |line_item|
          variant = line_item.variant

          product = line_item.product

          response = {
            id: variant.sku,
            name: variant.name,
            category: product.category&.name,
            variant: variant.options_text,
            quantity: line_item.quantity,
            price: variant.price_in(line_item.currency).amount&.to_f
          }

          response
        end
      end
    end
  end
end

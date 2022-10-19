# frozen_string_literal: true

module SpreeGoogleTagManager
  class ProductPresenter
    class << self
      def page_view(email = nil )
        {
          event: 'PageView',
          detail: {
            user_email: email || 'guest'
          }
        }
      end

      def product_view(product)
        {
          event: 'ProductPageView',
          detail: {
            product: [{
              sku: product.master.sku,
              name: product.name,
              price: product.price
            }]
          }
        }
      end
    end
  end
end

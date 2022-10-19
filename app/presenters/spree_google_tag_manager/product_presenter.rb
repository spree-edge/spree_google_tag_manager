# frozen_string_literal: true

module SpreeGoogleTagManager
  class ProductPresenter
    class << self
      def page_view(page_name, email)
        {
          event: 'PageView',
          detail: {
            page_name: page_name,
            user_email: user_email
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
